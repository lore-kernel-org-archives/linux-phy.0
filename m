Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB6B60A2605
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=O2lbI+cd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Vhw6Ke6l
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3LPiAhB69TPyKoAjKYxpsOqCBPFhKk2QiDxSfDVBO5M=; b=O2lbI+cdlqmt7oxyXKrhpDk8Vf
	LJHK9UAaNlHJ9A4agyniVU32KR9cFYE2IGeai6smgrm7qevM5inmO4S0wWD83mxvf3D0QlnFeLTZx
	9jsj3tkzAHQ5awS2yjq56U4xGQdemS7a7nnN1T4GeCiV0fNHv4ZR6lQwV/FN53jkwqoTNl3MQeGTj
	LFPDG8nolYFn1moji6t9i9qsgrjsWKdXnuxi9UJ5wZzJS57pUwfPSolQiCY3je8Y0BAcof1SGrowv
	oTGekLw5xKum0mLJYO7x5LsW6kubgSF4Ua78Wu0hAMSSyfXdCm+M6IJ/+oVrIk61Q71eTl1t55Amy
	zXiFr/9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1Z-0000000HNIn-3uw4;
	Sat, 24 Oct 2026 03:02:25 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1X-0000000HNIF-1Xlm
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:24 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-6fbf1ba31fbso492246eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810942; x=1793415742; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+PRxhLQToLWcXUyw+NCY3cvWXklRjDfoU9EniOYyU58=;
        b=Vhw6Ke6lvrQlAVU57By6hBaJ6mXsG5Wn09y8oMlrGSy/lbJpX/lehtOq7Z9KyhnZmo
         gwG6aYCvGgcrRmpgxOUy/2m/QyOunRRW6TnUOAVRfLvUawe+bVVx6A6uoc1J6VURzuSR
         ae1T1+rNUryWABKk1t4EUzI63rLdHn6kx9rh60YowUzEH6yLj+Poq4vrpdJtecxvXZub
         +BZfQhRZHGwr4lbxYwhq7/JwTZ4fB8bCIXQnb9BeHz8IO3gVSm6s9PbaFgzM9Z49QJJU
         cM9FjoE2EFwusmnXwqRj2uaUydWbMQyweVCOPG6VS/J4qZuYoKiUHIFCf6G5UsGNFyxS
         7+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810942; x=1793415742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+PRxhLQToLWcXUyw+NCY3cvWXklRjDfoU9EniOYyU58=;
        b=Juep+/CLXHHGArxSbP7CJdkm0WGErqyQ+9qA5b0HhcrKl/odxhlMBzeKC77LQ1itlr
         OV4Iut6lAwo8TT25vwiNlAMAatHuYcutYmCzoI57QAfvc7922krGrR/LsTi2Sp1ovEph
         ZBkbCZkHb01o1cGFyJpYu6VFB3b6+0/Y/kn/HBRnXmlozF73XrChl5Eqoan0T9lM8KRb
         NlxpStGGoS3Ox1SGYX+PXYeR5u0ekI0OO/evoe6XjYCBovd42SuX+49SMM8AGW+bFjnk
         GITfb+o3XPKl6wqY3CaTy+uoOPfTQiJ6FXwf9oU5dpfC/pE6FxUnwT+6WFgACBgDxZc9
         +4kA==
X-Forwarded-Encrypted: i=1; AKwUvBzu4uMD2VxmOCGP5KmiEVa0zQOxiSK0sOUVUVmUG+u1FvOKVwmrnO5MJVCyBRucZEszcZ9f0VcGcw8=@lists.infradead.org
X-Gm-Message-State: AFq9FYJqAZpSKxR8GtkOqOmhYRNBG8OHMg6MGxFhz9hsdKBFVrRNRavM
	M2Xcmw4VZohZ8o9GxPXovCOpCL9NJtscD4w2ZIPlnnFQCoxfeH+YHi4v
X-Gm-Gg: AYBFou0wm4E3sL4YM6RpV3Hr1BRoW8wliCoCthCgi1Xwig7vQfesa5uWrx/pB5D/SCd
	8qJv+rp9IKyF2phlbjsVU9C818iQX6gNel2nl7bEykUIHSxdgdsOQQdimAo8lQMMGlz/T2GvsLD
	AvFVj5aPbItr4eJIDel9OZ18mMK0LD2QOSwtKOQG5co41ylAtkjVV3dA6N5VaCjCSPGtUWN/1xL
	IlO5KDpD2TMbl+IukKdrg1prVbXHb7k/0Gxlvz0NB/GqzehUV4GNOiXFMG31heozyBsLnrhgl0d
	L0jOSw5aLFTRu6bhIorg+JNhMk5CEEDgNVh0ERWXmaLMy165UUZ6VaMKJaYI/gsK9GfGFSogGUE
	qQsVFvtjTnpQP6Y6eUwAcmoOvttTaOSKTkczZ1HON8xSE0uYxnwnOeRaoH42rcgVhiBSq7yvSUH
	Diu2fhagSzw0krkAbdUfdWEYBoefoh1hO52sBYNoPxqLnKOGCMFP33TslYB1TGXVisJbgifQi5n
	b+Rq3laSPNdo07/YHgYgeCeMWHWq4pE1bspD9dWdRegbaWBqmHcczrKoD4AZd5ETOKhzJk71A3w
	wd0d5sGz6aWOz+OU3taVzKNnQg==
X-Received: by 2002:a05:6820:c2d1:10b0:6e0:8fc2:84a9 with SMTP id 006d021491bc7-70ba0dc8642mr260129eaf.15.1792810941870;
        Fri, 23 Oct 2026 20:02:21 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:21 -0700 (PDT)
From: Jeff Roach <jeff.roach0@gmail.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v5 01/11] phy: qualcomm: qmp-combo: Add DP COM v8 header and fix register layout
Date: Fri, 23 Oct 2026 22:01:26 -0500
Message-ID: <20261024030142.13643-3-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-1-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-1-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_200223_415314_50F10584 
X-CRM114-Status: UNSURE (   7.16  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 01 Oct 2026 15:04:18 +0530, Nabige Aala wrote:
> Add the new DP-specific QSERDES COM v8 header file and update the
> register layout to use DP-specific status register offsets for
> C_READY_STATUS and CMN_STATUS registers.
> [...]

With the whole series applied on top of 7.3, DisplayPort over USB-C now
works at HBR2 on both ports of the HP OmniBook X 16 (X2 Elite, Mahua).
Without it, the stream ran at half rate and the monitor showed no picture.

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
