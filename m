Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F360A6F46
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 15:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=No4oqwNX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WsD2wS6y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eMg1g4uNi+xUuF9orcy98Enw78OGDAWbzbMJuwLqZCQ=; b=No4oqwNXc7dZyZYclhwMTg/Q/o
	mhKS3sjFbExiVdjwRXtBSKXqrCCzneq/Gf8sJjKtQ6dDK0vLFN5ohuQmpEv1C4Jd1Ih8pJQvBW7x2
	+vXmlH6xoHYIsTBo6V0v1ky+Ffu6ieYRVESndKRYs4aejW9JxNuH7pXezJEzOe98ISGV72m/VW0SZ
	8rq4nmLP8MqBryXwawJTZUrDzgposGv2v4u1zzHF1dk85V/5FLI8mr2MPV2TMhuuZ/khi2r+S6vx9
	45ekG4BirRrukjTy5reKPllGCBW7ifr+n9vW/Gta7kQIedQ/stZ6wsP22lqt2BT/uywyXJrXzp7L0
	Tuv7sfsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhuR-0000000EsNx-3GKC;
	Sat, 07 Nov 2026 15:00:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhuQ-0000000EsNr-3iRK
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 15:00:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D64A444F3;
	Sat,  7 Nov 2026 15:00:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DE181F008A1;
	Sat,  7 Nov 2026 15:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794063646;
	bh=q9Bi0tahlAuUAjwyCbyX0uGfbCI4CIe5HRgmjbxUD50=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=WsD2wS6ysh9jVow34VjdTGooGY00OP83R/XQCMu2NQm2eX9SkwPrDBH9tEQP/2Fxy
	 tA/4p/pURk2t+e8jz74nN1PzwXem3+ELUQhklCvHr74DkeLuLEV55IFLlKb95YEOBA
	 DvuPRKXBjlDW2A6vwnOqZrmKwvc44Xr7U+qy7CDw9XKwyWOYbORnkKmtok286rLGr/
	 ubKtFoR2Wl23wbTdgZF50emAMcjEO2PIbhI3ISr0rLbkwa1PmcMrcv8e6bSBcM30yH
	 N74TtDSd7AksIeEPRmPARZAHFnSR7u+neJDC/ZMmow6xGOnFMndM/0uOyKiN0bv3x4
	 fOo9Ru34QWLAA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v24 08/15] media: qcom: camss: Allow CSI2 PHY devices
 without CSIPHY resources
From: bod@kernel.org
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>, 
 Vladimir Zapolskiy <vz@kernel.org>, Frank Li <Frank.Li@nxp.com>
In-Reply-To: <20261102-kaanapali-camss-v24-8-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-8-d6b8f3f6f66f@oss.qualcomm.com>
Date: Sat, 07 Nov 2026 15:00:38 +0000
Message-Id: <179406363848.650304.998225523239519511.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=676; i=bod@kernel.org;
 h=from:subject:message-id; bh=6ClyclcQAm9+Ak4E3bcpIWErS8e0PORFMEQJE1pwKjM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBq7z0XWv6K3gNFjeKFzT8jxmV7/oCMfZT2S0yYP
 RVlXOoywDGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCau89FwAKCRAicTuzoY3I
 OkhZD/4jKi4nBcmggrLh5V3wbJURfqY7+F2qsds1AjMnhzWgEnbOLpxYBOMZvnBY+vW2y1OfsyU
 QvJpDc/OM2/qYwRp6QV1tYPe0+TC9w+19ius3C3jAC/1yYQxDXl8TgoiFpikfT/uY+bNv5nyKEw
 MNrhdZWRuywfHzORCnK7q4zbX9e1OeBKfpUNJbd03GYxyHlyLrvNI6VSRtdnkGphSjUQEJKk4wz
 3oE2+ahrBm+EMo9xs8WZKfXC/JmUEFpTx8TvqCpYcuooRu8GP7ZBRnwu6HFyCDDR0Z5ZfBRfQ5z
 2FUNDUOXfYXjzicVF6KJdoEz3rcQI40V0SmAdJYTb6p2uPlUJ/xTTmEPU0hldeY3H/eudAX3nl6
 rAdno+evM2Xj8A7hT930Xox6q5+O5dbbviua2qCteI2ReWllDKz6d2tUXcrcyJm40XJygTTBtVd
 7Sy2504N90w2gW/SSDBq6rTfSNCYtohqLPaKA9odxWSTQThWryIdSG+Qvqq9tmckBmXjPXntsVd
 JVmXIcqkj0kx72vtkgCSUUxvDcZQjUHvE75YhO3Z7Ke0bBZUCjjq6hZa8enRzkFfayLzo6UfBWc
 gorN3Yc5G3b0udGLsxGQofeUx32WLfx0z4HAT9UsGse3KYrXHACfru140ek8VwjhD5K2rhTG9nx
 YAvJgfqXPwGNXdQ==
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

On 2026-11-02 02:42 -0800, Hangxiang Ma wrote:
> From: Vladimir Zapolskiy <vz@kernel.org>
> 
> If CAMSS CSIPHYs are supported by the stand-alone CSI2 PHY driver only,
> there is no need to provide description of legacy CSIPHY resources in
> the CAMSS driver, therefore if CSIPHY resources are not given for some
> supported platform, use CAMSS CSIPHY port numbers as CSIPHY identifiers.
> 
> Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
