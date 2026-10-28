Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C04D606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=O49YXioO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FndXwbZo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j4Bv606JdNdzImyTQ4aq0SCohAfROZvlRjbTHm9+RIU=; b=O49YXioOfSoQbs4rmMyysieENW
	PKkGgXgVSbrh3JSRbVMOVkBryRdzbeDlGSBdaQs7LXbzglc8xEy99/kZOw9iFBtVBYjMLjSGbtSkL
	Wy4AzD0SUEpmx+pa6Gsk2uyN2xi3gta9zbBJio7MM1fJVZ1zH3n2Fy7FgoAyE2JbAJk4gQkltlD3l
	CF//T9UbuXOT/JryRc7eOWBEZrpyFcC5MyiSkX+VhmEsNov6AVdv6qTZEjgFH3kPgYd32vTvdZXBK
	HJ9EUg+ZoaSaJdxDo21W0j1KdPf+9W8d6gH94xmzUbl0vv19H8FDw0xFrPIvb2/d7EuSUPlhDTMBi
	LpbgfTxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1Kc-00000006oZa-1698;
	Wed, 28 Oct 2026 10:56:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1KZ-00000006oZR-3Uhm
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:56:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5E80A43EFD;
	Wed, 28 Oct 2026 10:56:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D90011F01825;
	Wed, 28 Oct 2026 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793184991;
	bh=hVZr9LSDJpK7Fp5q1K7wTqRWzM5rm5ZVQu5noT3RtdI=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=FndXwbZoYzD99btSoeEtZy2DWl0B4zsQxxKxcQykAynV3Wp/UadcoLT1rX7gNz3it
	 k5gw59wqRfW980nVFf4YlBhGpoI40KZRG579qqQTamvSMu60lX8ERpHdbEHRVdXkBm
	 GSRp2ogsEL2/vahyRmF3JlOz8np+IQx3y5vgDaieuWCWXvg4nMPn5Xob9SU5BPyvtF
	 6ffVc1DuzAXZ8FgKPcXB6v6+EiF6/cOndfKeasB33PNWmY5Rr502k1LQN091cY2oRm
	 n7xmwvKRrBRfjvTgncDhQCL/a9oKPE9aS9UmkmsaYwDlPK+KT3NOaelYEV8PbSQArP
	 dwLoGWNzIKXDg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 3/3] phy: qcom-qusb2: describe autoresume bit
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kathiravan T <quic_kathirav@quicinc.com>, Baruch Siach <baruch@tkos.co.il>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 Manu Gautam <mgautam@codeaurora.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
 <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:26:21 +0530
Message-Id: <179318498140.5872.2401839534067541401.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166; i=mani@kernel.org;
 h=from:subject:message-id; bh=hnJwp/Io02dO6S3ZHXQgYf/WeurE6cUwHj9/l8YJiL4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4dTYlntVeRycHVthR+BHqh/8GgFTiB2Otmhya
 hP+7KpGLkaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauHU2AAKCRBVnxHm/pHO
 9Tl6B/4gL+u/n7qty7yWxD3WG+aQ4rJ1MKJAG+gXyWC535NlO7G20LTyl6T/Z0ncz3rNxIaOpC8
 E7ErcDoZwNfNdcSRBmSOp6ZJiOLPq7yFERurrQHNbR7WZ2PA0sddKDCLGbGDT9KvLEwGjYJvJka
 ueu1/kP6JDCydrE1f/xG6VFqwdfcgIZQzpTWFTAubQ57N4auoLhBfjPULgKWyZDVxUeO7p0hWyj
 8bUK3ACwWv4tNsXbFxbMBCGvdgxd3vzCMvyRvNhSwaCTwuTOnOw9+lb8Fabkv3gOfcKjsiQsho1
 iPs9pXG5IIpGgL91150pmZ08WvQ017joybnlqCVbEhpGokqr
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-09-20 16:59 +0300, Dmitry Baryshkov wrote:
> There is a confusion regarding the autoresume bit. Some verions of the
> QUSB2 PHY have it in the TEST1 register, while on the others it is a
> part of the TEST_CTRL register. When adding support for autoresume bit,
> the code attempted to simplify the handling of those registers, putting
> both registers to the TEST1 layout entry. In the end,
> ipq6018_regs_layout ended up correctly definig TEST1 register at 0x98
> (because platforms using that layout didn't use autoresume), while
> msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1
> layout entry.
> 
> Update the platform data to specify the register to be used for
> autoresume handling, define both TEST1 and TEST_CTRL registers and merge
> ipq6018_regs_layout and msm8996_regs_layout which become identical
> afterwards.
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

With the commit message updated to mention the impact on Shikra:

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
