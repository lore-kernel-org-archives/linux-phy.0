Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40E960A382E
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a59DHMuX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=jHC5/w6X;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lonsGybC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GxRbZeIIpa9gfvfCHGi8hgKgdHyq3M+QUuRq8JLFAi4=; b=a59DHMuX4y32QUm0Sx/dmKo3NG
	N0hOfnkDlxoWK4w/oi0llSadS+qpRWC+Mt4EqzGFW9n+knh6htTmYui1wbn7so/A3rjoK1DOv6Buj
	9RLrxUObTompDemjzg6tM0XnPGw3TrZwk7g+l1Z0R7yTdBUFnstUgz/lEHqOx2aAc3jtkjkCIrROQ
	kGT52UFTcRpp/ISKVRCooHBniV4E7nPsABzhnn451JQisFIHEzPo9pzCKN5/VFHwg9ZNBEEJUQ3mY
	EmhJ10nVQzEvGmCFt/NovmmjKt71rWUw2rjftZjbVt95I/Lr32rSurufGXZuP4Kz65BPROHRSZTyv
	AUxesCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000HNLP-1fVv;
	Sat, 24 Oct 2026 03:02:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1c-0000000HNJN-3Llo
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kGCxXEwPwI4lAX7fe7S92k1f1wQoJNpstz6Mh/Dxeog=; b=jHC5/w6X3DQYMGH8SxPaGZtjwE
	5Y2pxDgjKuLiF1uB1ZdSkigIbn5aov76mGN4hqLxjLJ5kOdgPjfGdRWeSs6EwaerpppwnA6hYl6vZ
	PSa8hG+uPvjjOGT9djR6sodEhPgL/XrPT7p5pqV/cMUEFkkUStBA+4cNNRWNPMStoxJjpbkKVQcJx
	Rg1gHsjl3umJX2vGd6ccPYmvs+ORzlVXgmPYnDvArRBoQQ5IIHGRTqBNZCuqSbTX8wKkSmTbAX9zx
	Pjylb8zKUse53yXbWWFpXIxK2ciwQLqf8yUJAqKA7nX9Vaeb7S0IGDIRQ5ijXjjg6PY1gzEPFiwPN
	70Sf/ifg==;
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1Z-0000000B9Ls-47tW
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:27 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-6b19e291cc6so1200356eaf.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810943; x=1793415743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kGCxXEwPwI4lAX7fe7S92k1f1wQoJNpstz6Mh/Dxeog=;
        b=lonsGybCpZt+BDHjFf4wkQFfMTYwZopvCxPBqhnnABd0M4RMXixYeAS1qLRyfc8FNP
         Pws00fGBTq6JMx2YWGHSK1/5P2GGGDJiGZ5H1Yx8deQ/2nB/xTq5wc2RW0jnQeFyUBsz
         cDH5Ipnl9QOkSR0kXGh4YdoXT9Bfvq5eICEonv8IxGcyWDVNAPfMwRBmxS8BjIroXi0F
         DsD7ESHn2PD0GHQBPkwS/q2LN6qu6b9t/G+pdwO6GyrTRYsWlKA53S5IQU/0BNgf8hHG
         nGBBimgcYUi0r1lZoKISj0OAJFWLHK8Uf+tgZiM6h9K+GxO7Mnf53/vdG7JKCVEZcX2e
         vVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810943; x=1793415743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kGCxXEwPwI4lAX7fe7S92k1f1wQoJNpstz6Mh/Dxeog=;
        b=NyiYazTVncUT5JTmrhbDsNQgXRUpCnBXbbVdcQeWMLCEK5uluG5LXj/sF2qC5zq2pL
         mGHe+fZS6H14kNQUBJFZNvtg8YIK3RbCUNfC5Eo9WX06tZu70Dp3Fxh3zKpX78W1TSnP
         U7ilxW5AAZJaTsMCyMCsuZ4BmeU9eDZMG8uDHP5VZcWXz22D8vipLpXC81QIi9CxirWZ
         RZXzHi1WPMiw4EbabgfsDncdRPDf5/IhQBkGL+SfZCAe7LtDyF95mcu89gCnmM8lJBab
         laADFw7USHun/8hE5T6TEx0ORJQuDtvzPPdeAFguRN93euKoLV2VjTHDp2L1I1xKh98c
         dB2g==
X-Forwarded-Encrypted: i=1; AKwUvByf1HoFbCuTHL65nYFNTII6VsbyOqXCYQcQhsREqoGcYP3e3w4usvmDIcInH3ee0Hd35sYcY7QONBQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYL5c41J2qMeAYDWT6nAK2cKYuwVAEVnSyJ5weLP1lLznWzomZOH
	8nMjzxDZAowZbmeStpActsVe4puc+Xh/3PhxUhJCDnkRIRHO2fKSyYrh
X-Gm-Gg: AYBFou3FvvILLmfyaUmZDEzZvdOsibtoZCdzWjfmZR63qRuBcW1sJmmv3A7qha1SdAC
	H3cWs9yhllXx82qi/U7FA2eo9krINlxN9yaDFCrvY9Kp8VwsYCkmNmRVo3z2jiH/g6RvigPg9yU
	9CSXMhHphCR+U6zhk2bZmtjNzoKX2L0zzj/W4/WkNqjfX2hs7bByAboiEdxJIEpenBtjSwbydOn
	YOCE+cjOP8Au3xpIbllSNsPCcQq9v0ctCtMAmPY2aL3PG1PeD/Z5bCd/j2+WvLYhz/Kj1DTJJWi
	0CAuzrv2YspE8BPGy0CyVKlh9kYIgvsbJhZK4u4RYnN6B7OGeApwrU3RbvZpBHVvjTXcralHvdT
	zSXz5Ft/DCs64VXgzPStlM1JsTsLMbvG9EwDj0QQrB2uj6W3qnOB8rvfOpiJ6HldK6lwJR324mL
	0QnuxXko+YVJYE1KYXLZumiMcb1U1c+MMKXSBGbPU8uV+6p9bGe0w6MrcZMmJibw9JnXgUZs/se
	EHOln8YBzXDkcv/veTspUeOfBpQrLRTJncZGJn6YjdAaAaTQqmXW9AS3Ip/eXy6QlbeF4NTce40
	iuOK
X-Received: by 2002:a05:6820:c44e:10b0:6dc:beeb:34d5 with SMTP id 006d021491bc7-70ba0d725admr258799eaf.21.1792810943330;
        Fri, 23 Oct 2026 20:02:23 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:22 -0700 (PDT)
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
Subject: Re: [PATCH v5 02/11] phy: qualcomm: qmp-combo: Update DP PHY common init tables
Date: Fri, 23 Oct 2026 22:01:27 -0500
Message-ID: <20261024030142.13643-4-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-2-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-2-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040226_103276_0E954966 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
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

On Thu, 01 Oct 2026 15:04:19 +0530, Nabige Aala wrote:
> Update common DP PHY serdes and TX initialization tables with
> corrected PLL control values (MODE0 instead of MODE1), updated
> SSC step size, reset control, and various TX lane configuration
> parameters including emphasis levels and driver enable settings.
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
