Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CBE606A334
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 16:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k3TQLvWc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DpNWLkb2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YXIkpPLXgb5/f0+iCxTQ5UJGgZ2E+EheXrTb4oSpct0=; b=k3TQLvWcKhuo0g7Snl4BCHjWEk
	YGgfzVZOTLQleLzQvf12ytgM3OC09Wz61k97FxnKq+t7RDnQDDrVnIUB7s3djymdWCJf7NM86iAus
	/Yl7G0+gO6g4JnHbpbjJisL5+1EpVxjBUMOtYE/wXvaHoQ2mG6E5rc0PNA38Jb5iFT6F7MW6zwcO0
	r9kNe/vHUBT+vliqX+Rk3jYCtaqTg1/Mts//R6z0USu1MyZbDEmCVSU6cWrJ1p62z1JH/2yIx5Jdz
	IYvYOlogMVlmcBPnXGa3MxBtm0hI5dfbHs7XVHc6cL4LQFs6+XtHdSRrni8pA9Mt/1DVzzONM6emk
	3az3Vaow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBsn-0000000DUEi-1DYj;
	Sat, 31 Oct 2026 16:24:41 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBsl-0000000DUDv-0IT8
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 16:24:40 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-93e515769d3so169477785a.3
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 09:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793463878; x=1794068678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lVq0Ao/ZWudJCDsBPok2MvDiDplFAhMivQKS/BD/5Cc=;
        b=DpNWLkb2dgZMqBfoGXCrM1ZDd+eUvBGyqE5XKhwFFlvVooOgRxtefxt9hkIlAr4up2
         8ZLnWrJp7ZPwQRjveQK9CW6l3U+UwHXMnnrpoQFmaOLbqlridk7oqYfCgg4M3gpUPUVk
         yF9fxM4Co+/kqpQVjcvqNMip0IjEmgB55JbSXceJ1ccYk/2E9AOuPpLdd0LdUvvNDomk
         Ab0nPh9hBGUL/guxnBRGw0dxA/2pbC2BpSj/NOUOdS/8ysEtLN83E+siSk3yaWApe3tV
         EbV8Do1mHqNSQODjJbAyAHcmEKbT0EZLzgO1NPZ533o63aDcsF2tN8ME/6iBLr6Np+b8
         +BRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793463878; x=1794068678;
        h=content-transfer-encoding:mime-version:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lVq0Ao/ZWudJCDsBPok2MvDiDplFAhMivQKS/BD/5Cc=;
        b=QraA9M+mnPsSzLSmgIG9cV4aRgyL8X0PH6ZSbkdYL4siOZqwS67KS0jDYCqNoj5QFb
         cKql0antMGOY6GlSvU60fYttweuv5qvjF4Wo5VRux6H8DeMCEpT6FqT3WcOGUclRAN42
         XPtX6U1AmONd3d6hCm0+sjwQy+FqqeZh6Ej6fjcK/HSbnSSmE9Ivg/LU94507wKHIKC7
         BesyEXQ9gdM4pUZPt5L3o3UpK4VT+3gIPe5K9Yv+cg/Zjt3ZpRZp9W8GIlrftETM1N7Q
         XbRptGUr783FQ/sVh7LJko4HTeSn1V51KP0EakjX54s99YB6QIEaRcZFUbHPvH6YcVC5
         9jdw==
X-Forwarded-Encrypted: i=1; AKwUvBzTKDzx06TatS9ZRkGGz+nDNhlmu7yeN6UCikzYqzuH43F0rtc3Q3qMy/C4wqd+atyPjR6KZQ4rM7c=@lists.infradead.org
X-Gm-Message-State: AFq9FYIVyIhWALTilq4j9lQQ7AGXSM7kKb7L2KwxKec45UxOgZHN44Z/
	IUjuYjB6v06rjp0Mu1gNGkqoi8yZltvWtFWNjU3wt8PtCgP/rnljnNzdmR6kFbgpHRxIZQ==
X-Gm-Gg: AYBFou2BuxY2BUvhFFrhPCkbtKzOfYSbA2rqzs7agtg898/1mMGhgRAwX51gyM3spvM
	qNHITPpOv+LPB2Q5Nb0XGulzujpvBZnSlLmgNJ95hbhhcaIXVW+HAXncWB9IMhLuLnYTVg03+nA
	dntwNmd/bic3hVO9IL2TWKYlWnxsniCkkQRybQGDi+hmbiFhiCJTJtKEhtOfN7YN50jD9X/SDK8
	KOAeJkFijhwvIOCTB/RAq3Is61JK1rwFwEFCKW6L+OC4JM8XoLOFfP9e9Rjf38Eeqt0d/4M7kht
	Ocot9efKhKIC8qKXZwTVRSPfWvR0VhfXnAVy9f70hyiT9a1WipupgA86h0u7CD+J4okqmV4Px5P
	M5YI46vNIOfz4MNIyGkgtN4anq1kGlilOlYRdWtANIpcj4h2UQEGjs/NRI4P6ecuU/52+ymaLLw
	udFQySUOW+552lBJLLihAb31SYedNlThnsn6xrrDQUL2Mqnq4t7dpQ3iUZKLchrmRH73Lc23RUE
	2Uc9/d2I5HBGHsaI4JdkqCzCob3UFfxlmupeqs6ZwDtuc9h8TAhrhdNVr2EKlADOmMda22ox/Jf
	ri7pwO5hDQ4MsEYKpMRNyOh6KiePKow+MHjfyjBOAbYcIaaswf2JR/Qd707IhfO19dk/EwDDSts
	W3s7bqg==
X-Received: by 2002:a05:620a:471e:b0:93e:3824:4123 with SMTP id af79cd13be357-944216fef10mr997085285a.65.1793463877786;
        Sat, 31 Oct 2026 09:24:37 -0700 (PDT)
Received: from localhost (h159-112-31-107.euclwi.broadband.dynamic.tds.net. [159.112.31.107])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-94425ad7431sm414082885a.40.2026.10.31.09.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 09:24:37 -0700 (PDT)
From: Christian Cortner <ccortner@gmail.com>
To: Peter Chen <peter.chen@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Elson Serrao <elson.serrao@oss.qualcomm.com>,
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
	Jack Pham <jack.pham@oss.qualcomm.com>,
	Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/1] phy: qualcomm: m31-eusb2: Add register XCFGI_159_152 for SE0 recovery
Date: Sat, 31 Oct 2026 11:24:36 -0500
Message-ID: <179346368350.44447.7737375259522591871.x2e-share-m31@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
References: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_092439_111679_B3921DA1 
X-CRM114-Status: UNSURE (   4.80  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Tested-by: Christian Cortner <ccortner@gmail.com> # Asus Zenbook A16 (UX3607OA)

Before it, a USB SSD on a800000.usb dropped twice in a day with
error -71 and "not accepting address". With it: 28 GB written in a
stress test, and no such errors in 27 boots since.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
