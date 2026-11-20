Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1D60A260E
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ThYKld09;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PTdc3rl5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=J10DJxFuzIZEUB7S6NEcroErRpB+MmaVbsZCePnyVlY=; b=ThYKld09KNCzPDTcvNOKaLLiNM
	7nMDPh49ds7k4cpOrjS6VF0tc3DNYJfEm7VbciI03hn4BUyhhH7RjW/j7DuKCUd0GO4c+70FWg12T
	3vWCuVy03nXYW5r2WhFQtbYqzUz9fOCoIu6gB3FS61V88FwWyx7G/PgGGxR5Bugtn4IVloguI9Vo+
	ux0/ZGyFlYh5RcgK58xIIdr/iW+o+XhPu6/59mrGSGjq+0ERJiXBKEwHB2yk5LcEKYp2JETnqMwWK
	NSKDty/Z8ZquyhomMMi+nU0BhNM62I7kKl63COUXkncr1nU/uPAnd29XZI42N4wSYSkoZ7YZzqis/
	yIOOouWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPNp-0000000FDwO-3YbL;
	Fri, 20 Nov 2026 14:14:33 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPNm-0000000FDvS-47u9
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 14:14:32 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-38587f3de36so1062949eec.0
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 06:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795184070; x=1795788870; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yKYud9p8+aP8cT7V12zkUbmCop1ErkdHEczU+hWaU/k=;
        b=PTdc3rl58MWPHQuqnjVoqCuwprhMOUJYgE2njGAi2g9I3qaGajYT+0QyZGJ2amAbh6
         p/Rsf5Q7b7edUjRoPDPIREI5CNe8cbtBCN0dXVjQNNmyMSLkFlshX9Wrc0rRtjISasE0
         1XKwFqVU6XuxXLoqBFlh6S0IjfJmOVMhClm0OoEeTqpVWiUEFvUxWf2n3MKGCEUuYQKR
         9Uhlq62/8YgalP2eZlkmwBpJZC6FhcZDUJaLBLwNWJ3ffKDq6VAJSkr31MkHnHoFC+P9
         qi7QEoKw1O+OB2FaYFMhrvjym1lktF/UQ9id3fIcAvUNZl9BvF6A3jdxjwsXUFm+DXJa
         SmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795184070; x=1795788870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yKYud9p8+aP8cT7V12zkUbmCop1ErkdHEczU+hWaU/k=;
        b=H09F8UHGHNKndQKWBwfgRK8jS1NDHCJTx48bZKLxyT4M78Xda+G3YKklhCyxwRHIXz
         XnDP1Ss9uMumUcDF05Na6VDHDfwXdBpS1fe9rVSjwtWnKI0e5Zj5NQQWNF0+U2TgBbYq
         /k34F3gF2hV8TlzA/7g2tWFqPyw2n+Z8s87pheK/TqHnWhn2pXAKjZ786GsgkrpZu50L
         b14BW2S/BsJua51Sd1U9K6vL0K0PiN6mu0cH242XRKkG79aVDxV6rqIzNOq0rvQ9aSoa
         vX+7eMT9XwS4d6Ou958fXezTIVEaFnV2r2vMS6JjCDzSSLBkAnvD7WaXebGP9uCeNeFv
         EQLQ==
X-Forwarded-Encrypted: i=1; AL+hErE2ea33UtcOOjPdeVbHoAycBnrSaCzg+lT1mCJXKHEW/cZXQ/JJL6dU7ae8EF60gPNuMmXpdgqRfCg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+EyHvuWDiFAUozN4CdsIGhE3MtqTceXma5ZG5Is5CYn9dMQNLT
	HNgNXH2NnjxJujHWZAqDxD12v1PqaEtF7qP0stNmMas6y1o//wj0PIMA
X-Gm-Gg: AZFdTZcgR/Py8DAT1Fk6FrnG9SS5KpkZGxMmC3OQvbajhnz2kvwURMTWRGNMWwu25ZP
	AkgHrz1cycSrUvISXf07W6R2/owX1d7SD5SHljTuEgUmW9LZ0aj6gF7NQTyFjmeT4iqXZGOmXWE
	XhjJprd3I7Q6TCnIhy/Ywf5H+SKa5n3ozEs8nOOa/mM4umKShMiIrFEsB5Gl7jHJu+JmQjpUOq/
	BCeLb+Otup9f4KQKceeiKaAP35ELUAChkikASf0x1JjIujbKXYyGlfdGiQtCMAJaptcZsFVM9Ke
	TuFbBEvxkZbFRtSwjI/HDUiEVy0IJaw6dtcJGnXDwWFNT4IRm7oO+tnKL0pvvohc9S4/wFx6hNY
	XFItiIcz5n47//RSXg1UKo6EKLhEm3VbomiQzuy3A0iKeSjECNIuOqqocy1REh+LNrAIKCfi1WY
	mEt+pvzZbc/awWF9xW4lsgNlbIrHCV+IuYzcV4ADutYVw/h4qUChn6jVelYfCpEwJJTNS4Y/RU9
	iXacgeqH+YdfSGs+/dgp2tqRa5pqqhrHEGdig0GWGqSmt87ICclCOvZof7vllXNpy8ZR6U1vDMt
	xbQ6xgcIemUpPf+xGuEUC9gOk/HDJJOOD4ElBCaPoBijWcQnrQE=
X-Received: by 2002:a05:693c:87c2:20b0:36c:dbac:705d with SMTP id 5a478bee46e88-3856f65a86emr2607885eec.15.1795184069954;
        Fri, 20 Nov 2026 06:14:29 -0800 (PST)
Received: from localhost.localdomain ([103.179.231.88])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385666e7f59sm8954893eec.6.2026.11.20.06.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 06:14:29 -0800 (PST)
From: Sreeraj S Kurup <sreekuttan2156239@gmail.com>
To: vkoul@kernel.org
Cc: angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	mani@kernel.org,
	matthias.bgg@gmail.com,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	sreekuttan2156239@gmail.com
Subject: Re: [PATCH] phy: mediatek: mt8195: Check PLL driver setting return value
Date: Fri, 20 Nov 2026 14:13:59 +0000
Message-ID: <20261120141359.2532-1-sreekuttan2156239@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <179510544374.1370333.8388939289479267591.b4-ty@kernel.org>
References: <179510544374.1370333.8388939289479267591.b4-ty@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_061431_073665_7C550C84 
X-CRM114-Status: UNSURE (   4.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

Thanks for applying the patch!

Best regards,
Sreeraj

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
