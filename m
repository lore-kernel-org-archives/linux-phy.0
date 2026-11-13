Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C4606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 00:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2dy3t/7j;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ZA6ZT773
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=m4y886SYwa4VnNXtQDUbC/pHTUp79dcoudwG9k1IMBs=; b=2dy3t/7j5dyz0Tltohcw6gHX4g
	xUY+86hQoyZxbp0w258W/9HE5iJWU45CD+AD7WWPeqQR2sapu7hUh7E0Sn5B1OAZLWkH+V6/wD9Wx
	57yb5IXwlhl0f6Knpom0nzCWgHe2qPyJAzJ8ZxG3NYhfBShPq1huaWUVVselEteCjjWVAMs1GTnAm
	KAAIBcEBGvh6XEnpfHgocW1Vc+HCS/J0JQc62l6LO4bhljl0z+UbJkGo8hI9bMh0mHpPHW8DKY15v
	U5+1P74xEkXIxbdSNt1eF4gYExS3gFkMnbDfvI0pTT+dB84UxNpkEsa26lQfY2Fw6HzRXI181/VIE
	jK3q1eJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRfIi-0000000BLaa-0AXp;
	Fri, 13 Nov 2026 00:37:56 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRfIT-0000000BLPn-0IL7
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 00:37:43 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-492fcbfaa88so137514f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 16:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794530259; x=1795135059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i5j4IdUV7rfFI+fa6P9l+T7WdDrI8Iia9UsGOEW/6qQ=;
        b=ZA6ZT773bgm4plh7Ai71Bo3FttfNa2mVDqkpMXxMlm98brZHIJEP4ZEP/Co5OQ0Cnx
         WXkmYEuH7sxxN3SUmvyrIM9ECGK5pz7e0zEotlkizO38W8tXUXmMgbYp5qCvaJ0meO7t
         wAP7nW5/LenRD0vN9bJZPnTIhH0aY1Pm5tYI6DQrrpqUUg4Bph4qQNWzjZZO8qbjiJGo
         c6mDuUHUr/kdiSWSRdMrzR4MRKIL7pZ/SlKfbhAZI4bEBQtItUl7lp3aeaRhue7KY6aC
         ylZgWWJpgRR44Ayj7l2yV/AfT270XMFpcGBWBRMTrG73yHMvCJzypLFJTIaQsJ12jWPQ
         j5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794530259; x=1795135059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=i5j4IdUV7rfFI+fa6P9l+T7WdDrI8Iia9UsGOEW/6qQ=;
        b=gd/bDAw1wkjXxVr1xMxxLQNRDEocJesTav0CFx0nLr3XL0vXF2c5QahL82VdbAJ6XM
         t8uPTEL+rGwD77n1OmF0PizI4m0LKCwlfWHGtj6Pem6g368eZGJZ1MS0u2igypjQGkIi
         V9t8/BcaA859y70MHV1zl0E5CMz5yT4Pgg2SqRJowStcd/M1pr1VIO91VvB6OLAOfJWo
         nMmyRKARwiCQ/6WUwL0Xoq60zYRtetBw60dk8vMj0XJtK2zwhFms/fFsfuAh3Wj5kVMs
         QB/TswPNCzOkMiQLvjDbR9832NHKY6Jn4OAsWe8gfglvD4DXKsBO/U8hA4so0Qhine/N
         wASQ==
X-Forwarded-Encrypted: i=1; AL+hErGAC9yVXnZroIoNMd0Vb72rImXJ9K3gk4EV1UZrrC3l1IC/bX88DpocCTI/5LrI/hnwaBn7FUlY4gY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8/YRSAcdsKT8A+NAcHVs0erNP3eTqP1nclFRnJQuzz4NKrpvIL
	QhZWB/2IZNnZjLygRwoCkRU5ur4GB6DlX9U17ckIG2up6aRusDZYqcoR
X-Gm-Gg: AYBFou3lJZxbI5spOM2ZGv/seXVZ3SBdRaKRPGzT3zfVN08Ow+Dww5HlGaM4LccnivM
	mA/Af2VSG7uMMLpOtfVnb65+diEZKaXr0OtMLwwZ/YbhdxNXqEBIIRIUlVt6hTHxOCZxlna2wMI
	8skq0WLU9+ELXtPVfb8DdTE7FPg1XZtarUoH7FCNkSiNlpzvAFu4dapSeYOt6x52NrDwz99e3xT
	f2set42Q5sxXAYNOJEiM+jZmRFLthh9HEZWH/kLkRHTP0GW2qz16BBaFmXSDoeQn3c3zOERAr50
	cssSGZ/ty7LYhihqKDf0BmBNvUyAGWjeZopOuZoEAPYxjCZumjAvvZlAXELyvE1LR9A6/wHNUX9
	rANJXHhyh5G60X3tvxNkjtSzY4m0sAOIlgBnKKeqtYAfa+UfltnCa/ndKGXBS1UD3oMCbbPgs/U
	5UogoSez+VxlqEBALDm4tgh7uIyX5/tONHbdEYSMdw1ubhgSvOyjUF/MnY1DBx4va4OMJSeTDxO
	Ube7nWfaFwXAgkOtqz/Ay3Vf31l/jMrOWuPVY/9hYzwKFbnya65rMQAFoMu6A16WWQaLMFanwIX
	SOYduyZbSMTPbP5R9YRxBpjfmCCKYpRTvAko07IRyX4rpj8Zx66BF6ZMy0DMgJqf01YowScBAYv
	bEByB/cJVLKVtMO1yVEWAZiD3dmX1gsEQJc9yGFOQSvKEdLEbKHtuaL9OMKdO7gRSQ+45rNKCp2
	hSSSA1kdh+WndM9XLR
X-Received: by 2002:a05:6000:26c8:b0:491:8462:20cc with SMTP id ffacd0b85a97d-49c73ce5e65mr2081140f8f.37.1794530259311;
        Thu, 12 Nov 2026 16:37:39 -0800 (PST)
Received: from navid-pc ([2a01:4b00:a856:6220::a11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c8d286480sm1866976f8f.7.2026.11.12.16.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 16:37:38 -0800 (PST)
From: Navid Ghahremani <ghahramani.navid@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	arnd@arndb.de,
	stefandoesinger@gmail.com,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/24] dt-bindings: phy: Add ZTE ZX279128S PCIe PHY binding
Date: Fri, 13 Nov 2026 00:37:38 +0000
Message-ID: <20261113003738.3668081-1-ghahramani.navid@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261015-celestial-wealthy-cockatrice-7f100d@quoll>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com> <20261014072109.1759502-11-ghahramani.navid@gmail.com> <20261015-celestial-wealthy-cockatrice-7f100d@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_163741_280168_87B8AC89 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

Hi Krzysztof,

Krzysztof Kozlowski wrote:
> No, that's pointless. What is this index meaning on the bus?

It had no meaning on a bus. It only told the driver which of the two
PHYs a node was.

> No other resources? Then this belongs to the parent node.

Right. The next version drops the PHY binding, topcrm gets
#phy-cells = <1> and the cell selects the PHY.

Best regards,
Navid

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
