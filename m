Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71740606A33C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 17:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T+fH+PbW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=GQVUEcJt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HX+E+gQKIFutY+D9AzfXFTVlE2N9S95uK5jk400vbmw=; b=T+fH+PbWer7bJnsX9cOj3/pIym
	Y3R/kUnFSMCiuudZTZd+7YbYpOms/ZGZ93n3aluJulm6f2yn1prMeYVMonh3diyitK6XXvNYmeKpi
	mK9M9lpjDFTzpDpdpfp7vjVVIG8YUnUQLLWG6QxYhWdbKaD1iqSKHiapAdWU97gbjejffZoASL7YY
	ezQy8Wz7vpE19eTey5fvN2J8xXopDEzRe1B/34m9IMdyvTtkzB8rXY5KAWO11eISd7w90MWP/ULMX
	V3nuHKJjNrfMRIl+0FABpvcpoeBHUlPITrVjOyQAhTZXIumBB8xTv2eGxtNbumOgOadgEs7/mwYDK
	FuPKY0tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQTKl-00000001MqM-2iug;
	Mon, 09 Nov 2026 17:39:10 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQTKc-00000001Mnh-1ji5
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 17:39:05 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4b79502c27aso12250445e9.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794245936; x=1794850736; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VSgAu1YCz0/TBDQtz025D2yh3sRQq8BFfiF0sq3qrAw=;
        b=GQVUEcJt0s2zkSx2+YBLd4GOxu5iYtLOLOFRamhjxWFv822ZEiXQxgQw2DHFQZN/4z
         5XTvQpc+sn5MYgI4fxN20UWjDk621QKggBCUdKhhmKHalTQxQ+7rnkEQvR3f2jNMhlRM
         Qfcu9nHshuyE+fcWRK2XFeqnQYVpLBde2WA/ufPxPF/ScZ6wtZOndo5Whuln5JV1r4mO
         yzhZlOTazFChy82pNjcJKq6HOSpBce7mhRfH7LzPBpEFEQyDAAfY4YMh40FhY3ixKj1K
         W+MzB9wWqJ04IY2dK5RoADJF0tZZdRsTam0PVUODgPB3TrpCjci4zME8by0v3VWFBiFz
         DtoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794245936; x=1794850736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VSgAu1YCz0/TBDQtz025D2yh3sRQq8BFfiF0sq3qrAw=;
        b=dobn2/NANGCofl4V0A+bqJVsTH9ge4l/gdaR+q7Y/APrevObC32CSpg0dCabwoH3ul
         GmfMUEyCdIZyc26P3gDHL8ylYtBiDeRxu6BKm3UJfG3b07PfCV54PkaGVhzENKcNgYh7
         82Q2TisaTgXeNlsAJrS7o5TfaQkp7jlRjAm3J1S4t5V3JwFNlrcDp4qG7lW09fU/GOeJ
         uIk9QOQbdJ57ZOeNdpKWNsU2MghX34H26kWeQlPHBP8gRA5oWd2WO+/n8bLvElb7aO4r
         13D9mQDr/NQebtpzLrHkAVxmL3Y0sMZWVwO+KMAvB4lWFl5DX1lL8Dly13koLoiASeaR
         yAeg==
X-Forwarded-Encrypted: i=1; AL+hErH4Mf1gs60ZDtYsiS4nfarMGhmL6byD8PXuAwyaZrcBuL+k5yihc66EYnRX0pOUi/7CrSH8ZtWX33k=@lists.infradead.org
X-Gm-Message-State: APuU4Z8n8vLEMLjAOLaOeUtLLZCkBv5czs6DhoBk3E6W1NIIcJfKHky0
	0R8cdSw0K3zqsQxFRtckyVZQuS6JHHWrB8PrBO03CZYiovsnZy4Uau6D
X-Gm-Gg: AYBFou2697WTgAwPBW26gjp+o7vNp7W8TgoI6Tdun4BBLnFljl5C7b9fnwAUQecUr6H
	kD4WTWGYnaQU4rlWzK18ltz1D/jiHuDKN5G3Pz/Hayzjw0xKVTnG1xZVZSNTN33moQVOpidRMhh
	b5pa+NhbLTbOS48qUKWY3JWvTKjnMTgzOVL3Ym3nh2uWairwLNzkskpjroj+7VAyilsfVPYEQ7m
	OUAK6keDD6ViTRTZJo9qTShDb873g0VJto3ybIf6T5brQzcJ76piXrHFX4pL5IfSeiomUwXRfSr
	+UvOgfz1Drr6EyyYaDQFG9IGd0+/SSPAvY8hX9Fa+XrkgLEb+1ANLR7N+O3NIcKpDqPLGVRXGw1
	E50MKPgpkl6usFcfzSjIycnTif8sYaKWKqhKzMqhBsW9USSJP3nibFjngON24qcKljkp7JKa4ff
	9Da0x5f63/dWg/c5fTsYnSdMHsmRX1lGIW4EYsiVJsmNvIjc3G/ClXVx0rQdffm+7YeGbAeni3W
	odtbwIb/9wFV3HbxhubYRF5WZdYN9ypgwMzMJnHLREmJKESqBG3r+K6KSiXBoNNYciU+V7ZPNQj
	3CuJRymj10E/gNxRa+KGNqHcI9s=
X-Received: by 2002:a05:600c:608a:b0:4a0:1b14:e283 with SMTP id 5b1f17b1804b1-4b94d76329cmr92154365e9.1.1794245936334;
        Mon, 09 Nov 2026 09:38:56 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba0157b707sm2522005e9.0.2026.11.09.09.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 09:38:54 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Marko <robimarko@gmail.com>,
	Guru Das Srinagesh <linux@gurudas.dev>,
	Thomas Gleixner <tglx@kernel.org>,
	Radu Rendec <radu@rendec.net>,
	Lee Jones <lee@kernel.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	"Joerg Roedel (AMD)" <joro@8bytes.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Stanley Jhu <stanleyjhu@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Georgi Djakov <djakov@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 01/17] dt-bindings: arm: qcom-soc: Add Halliday
Date: Mon,  9 Nov 2026 17:38:37 +0000
Message-ID: <20261109173837.2084788-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <78a88d4d-11af-40c1-b063-b6a4d4298ecd@kernel.org>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com> <20261109-halliday-dts-v1-1-289114ab8197@gmail.com> <78a88d4d-11af-40c1-b063-b6a4d4298ecd@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_093902_091921_AC7186CB 
X-CRM114-Status: UNSURE (   9.56  )
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

On 09/11/2026 09:25, Krzysztof Kozlowski wrote:
> This should be squashed with patch #15. Also, there is no benefit in
> organizing patches within patchset where patches to the SAME subsystem
> are split all over. #1 and #2 targets SoC, then there is a break and
> again we are at SoC at #15.

Thanks, I'll squash it into #15 and keep the SoC patches together in v2.

Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
