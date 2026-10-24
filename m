Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443D0606A321
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K43DVskf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Gr1655FP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=gY2k2PkG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n/gRq6jFG3z6Jwl3cStPE2qWHN0gQb6+qgeVLA9q1JI=; b=K43DVskfPPeo2gTbPtrY6Cfds9
	ysRkpVRfF6AX+3VCz+j4auyAUq5nKmqVRCftwuUweqsLq0kb8SQf9NuR98BauBKjdPxwzONJE/Q1Y
	4/cLwEyLSn94DmINwzb2mwR0VGyH58H1JB73bwXfkI8FwgAWy3R9qsYknvu6M2L+cl+uUfsr2xye5
	KAgY7CRnMg7z9+hiaS0ICHjOzJVWUMXu0X8AuXfJZPpRdn7tuqK3dZL6mZ9IhFc2dF895W+HTX5gg
	Tk0qLQ0UjIAarZ3EnICOSHQJqifr2Ozeu4SLOg1nXsloA6dDP/cqYFQWdeSn7Ibk18FPtas/c0MBr
	H1SUU/fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1z-0000000HNPk-00BG;
	Sat, 24 Oct 2026 03:02:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1o-0000000HNOK-3U8C
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5aDf44Gat6Pf0H0w4M0JG4CAOddgF7K2Xbo5NNmzKjI=; b=Gr1655FP/3/vyVOmRGCiI18UXd
	XwrhEDDS2yJgF8LbXx3RxzxdCJSYmwcLrbnfywALkbKFuavCXDIuiePb2gHYvdwD+ncSYvHhuCz4R
	RTYlUfqlzuEor55do3Ho4ew4zfG+0dbr0fEfY9H0Xj0J0RibHIOowONNkp72hu6rrw65kHSoj2dCL
	rHKBMSOYfy+BE/J/bPI4snlsUm1B+vOlBEM90p/iv9hHmArqJofuBIGGXAOtw+p0NFa6vATI0xoGe
	wrw9ehCjHF8Y+uT/PImq0cvOOboBO3cY1MuWY8HqX88uVIRTMBDpckcrcf6J2fWLSMKEKcLbWVH9j
	ygXb4VJQ==;
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1l-0000000B9OK-3yCn
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:39 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-704597ef1d8so650325eaf.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810956; x=1793415756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5aDf44Gat6Pf0H0w4M0JG4CAOddgF7K2Xbo5NNmzKjI=;
        b=gY2k2PkGC86yK0VNQQbEK1nooepi+Dcy7xo6zMhJrxnDltQAcnJiNbb8ej9sycB8B6
         oPo6HynshjUOHygsk49EbI1Nqr0aoeiU310Da6IqWOSQfVBNpHtrCrwZidaLMp3N4aYU
         gKlA9kSCOUVbIQgo1CUf7SMFqAFhWM4nbFjpE0irFGumfWloka+rWMYIPPWQenSfwEhE
         YxKAQGGbXQQd1V76IBY1+4EohxKvCCAfF3KXBLX0MH8uAjtMgbsPLn/ROz5knsO60WBL
         qssY6GIt3Hd0W08FG4Q8kn6uIqzt0bnLXLSyuyYb9IEHuLcyn82kiI/hbQ36Xx4u+P+1
         1EhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810956; x=1793415756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5aDf44Gat6Pf0H0w4M0JG4CAOddgF7K2Xbo5NNmzKjI=;
        b=s0OMjkiWdSEK7wEKIErj3526nPAXtzx4//yYtbmUND3Gg3RH8+B61x/bh2BcN3x2af
         K0GB2/j/VeIRWqbxZwsglX8I34qUhDVE2BQ7AwfI7bcc3gYRifsZilOb1zs3tWDF5r6w
         NLs9aeUsVeYwwUmPznwac0v1z5nkluF+zckRl2NoXuYfqgST+yBoLg+h8zRaMxd2hl8k
         ZcTtqDtY4eUH7scY4brNLU8hzw+HFVvRbKaZr07k1WnKQep/NBJ+aiAKMdJ834woyfNi
         b9fRoXi5eeCBMIgAwI1FHNNc5xk81VgtCncg7VGMVlU6Tq2E4zMVzWKph/yf04C21vcg
         zKMg==
X-Forwarded-Encrypted: i=1; AKwUvBy01+BSKtYRgzAOFFQVkIQz7ffs/T+AviJeiwVR/xd4wfNhaMcQbE4eq5IWgmz1YvUTil5qlmmfCt8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIw2rVvx9fTw/Kdrdy6/7c6mS6ZQFk8tkIkPANj9+eB9eD6y6qV
	Gyj8p/IU3pwTVwy79Zug+bz047gUrlzCk0GpWO5X+u5F1X3XewJktkjh
X-Gm-Gg: AYBFou0kUgQ8LbVrGoos+D6R1GyitTQrJ4kjSPcMclQyf5A3gOvPleW/qEg68SzN/9v
	PE3m+BXwFNlAm8hDkDBQp/O0qs/Yb4Y8TzFO2iCGiJw3cpcV2IwdFi6CFRxEufxuuTrX0EcQa4e
	Hx+IRpJICWvkwutmMgam2JB4PurUr0b7k4xyejKlWxlfe53PnONWWroHfi9cx6GpQc8WPDRnEa6
	xWfJ4VmNdN1xclmlpQvZDHafeOO1WRqPMgjJ0KnxXx1sKCDLDRy6LrxxRIG5q565PC0eO5QjaEJ
	ckYEUUsnCkRCqbyHK693h9hfKQO1Yef/2xv+8wA5zsfsNNMZeUeat8Kyq8i3edH9A8P/83DVVFT
	MLU2QtCaMVkcdKwnhX1gfgvh/FbQRAVUePLfqxfceBWileWbe/XHdMZi74Asc+C23UdP+M+Xl4y
	VGplYkJxEESsGXvrDo57OgWblksLfTiUMSumlQLqoCJrYs2MQTTIkxv4p/D0/NnTt+gw2EAWaTn
	UgolzFjV/2NdspY7gWZKzduwe4zew60pPmnajqst91KHWLBO38/k3Wlg/5CRpQs5CkIBBVHKUCB
	Y/0S
X-Received: by 2002:a4a:e915:0:b0:70b:8307:9bd9 with SMTP id 006d021491bc7-70ba0f6f55dmr422950eaf.78.1792810955676;
        Fri, 23 Oct 2026 20:02:35 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:35 -0700 (PDT)
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
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v5 11/11] phy: qualcomm: qmp-combo: Fix error propagation in qmp_combo_dp_power_on()
Date: Fri, 23 Oct 2026 22:01:36 -0500
Message-ID: <20261024030142.13643-13-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040238_187385_21D0F6C8 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
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
X-Spam-Status: No, score=-7.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 01 Oct 2026 15:04:28 +0530, Nabige Aala wrote:
> The configure_dp_phy() callback can return an error (e.g. -ETIMEDOUT on
> PLL lock failure), but qmp_combo_dp_power_on() was ignoring the return
> value and always returning 0.
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
