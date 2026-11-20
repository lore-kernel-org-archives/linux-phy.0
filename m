Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE4606A335
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 11:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WLEDqI25;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hcBexOHU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LedNjXhO7rRjMv8PVEH/w6nEMR2sQKpne9Gh7HihaiI=; b=WLEDqI25yIsjxtszN90evFBXjL
	YUcFiWNKwrvwqhE0TXI5EAzU9XAT5n92ABBwHearHuzBjA4d+wY6mU3mdm7R3JfeKbW+KrHWu4Qj5
	+tlSRFpAP4TMdK/vw6iDe8miS6qgAdZZ7Z+IOkjxSJ9eTy+ktJi2bPNaccrqYCaM+ZfDRt+vGNvpG
	DjDoTUffWvs4u/d1CB7zi7jUtPVwxcA9D+DDB+3jr4jMuekFLLthi8bAMEi+09U65jhRBKr9v+fYT
	t4+r9+afVOPDcGt7tnowBISgKcQB0j/z/kCs6Cj3yy1uBUmAYlutFFp4nSiR8fUpjCOHGK5Y0eJM/
	d5wZbxmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUN71-0000000Es1N-3CkI;
	Fri, 20 Nov 2026 11:49:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUN70-0000000Es1E-0Gah
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 11:49:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D8F061B30;
	Fri, 20 Nov 2026 11:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCCE61F000C0;
	Fri, 20 Nov 2026 11:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795175340;
	bh=u8l/U5OT/Y6CBEr80GX62yXAKFPyEQ4q4m7GqQI3+Nw=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=hcBexOHUMQkhXRpw6J2YlBW+kBBvPm7QrGDW4CGU5mAlWg6twGFJxe1ZqttaN07tn
	 sd4v+OROeVivVIw16xj/TXH5XCZ3S4hypUxgMbynLKxKBLD5ixIPy8UZ2ZY6c8FfvN
	 pyEvQ5W9YO3DkgIPSor/3yhPOnVYGx7M6onSbyAdoqBvBckgNjBsqwJkBnm8ubbjQi
	 0B57FJlZiBSaL/jud64G3ooz9IpjTTrMV2bj11E/eRbqZI0FUBT3ZQpTi1rjTRAmRl
	 amccNZt1lXknyuG962K39swBEJNao4rwh3irNCNf0J1rhrkcIFw7AE5bnWnweHROJy
	 wQanlKSiR+cfQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v7 08/23] media: qcom: camss: Add PM clock definitions
 for SM8750
From: bod@kernel.org
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-i2c@vger.kernel.org
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-8-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-8-8ff2a11835f6@oss.qualcomm.com>
Date: Fri, 20 Nov 2026 11:48:53 +0000
Message-Id: <179517533369.2846709.4822429145839216229.b4-reply@b4>
X-Mailer: b4 0.17-dev-e3fc9
X-Developer-Signature: v=1; a=openpgp-sha256; l=487; i=bod@kernel.org;
 h=from:subject:message-id; bh=uMJapb3KunetUf6a8hwO+z88+IfyEVucqVVMO3w/uh0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBrADOl2MX4yKVTxDhvZxr+pGfmeAH85hqm4xuZY
 psAiCfBz8aJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCawAzpQAKCRAicTuzoY3I
 Or65EACi218HD1FId3P5PiL3Jtf7fowZziKnMcsHHdroi69/H0q1YecJ6AxAF2bQU5s3/mlLynt
 MR9oVqbVOPwuFepOAFcq61n91ec/R5we+PVfA/3K0ku7nDnlKYnZywZx/9IcBLPRKRny9joAFvL
 AP2/YOg4vZWJDenNUtPp1CJNVR2vfzb2g422cPV91MKrTY1r+KcNHQ5Cfzz7Vf8Y0XLG3Hb3oy/
 PPHTz+/MGr2IradSx2J+/v9LUGcHjeZCxq5KDnM9ItPu0FwKqgzNcdbnSS/F2xB/UUr9YqAS4aw
 oCOvsZiveZufw0dGn3tmKqPpojUbEVC2urFqQyU0iIUZA3YQPGIafwqJFvY0eOrsrbI3TnSpiSF
 tVHeBRUjL9Drd8GMdVKy0zDnyxdYPs18SLPZyM1eEblBeJ+hcPS2AtRCs8gf1vMYZrupqTkHdiY
 T7uRSTzUSMGmPuzap3oh5pU4O39ccURtuy33xZdhQR/2dm+i3PwK/feD2R2XjC+vIK9rxuy0Y3T
 qz9DPscI1ogkiJEUlxVKJwY8w/iZo7uJ8swEc0ajLl90Uzgo8y6e0b2LR4GOFPrP00/EkVDUH6r
 zzq+XIzjGLGPOKleLiyQYPqoZ6th0YnWQIv8STVZxD1EbcNA0MuckMgYkFo3VbG/WpTJP0XlCvD
 fdkdjXePKPFPEWg==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-14 19:29 +0800, Wenmeng Liu wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add cpas_fast_ahb, cpas_ahb and gcc_axi_hf to the PM clock list for
> SM8750. The CAMSS core enables them through the shared PM clock helper
> when the device is probed.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
