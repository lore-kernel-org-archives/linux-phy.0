Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAD7606A323
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y0en+ouZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eW2gBxVF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=efRaIEJ4kX9Kwpk8K+8bTHz8DwSgt806NV/cpR2eSO0=; b=Y0en+ouZkLM1DvzCkVTQ8BeklN
	6meJgUdgQZoxo7f2UwQC9caAO+mQYr3hhfXysG3bREPkL4tjw2J3KCcBen0GT+adiETPv93QdVgGu
	Ip6hGJq05p9sYMxN7k3OE2q2wfgoqQidn92RzNDalsFzICNkXOzR9ln4ln5wwVq5zZy3JP+ILiIJw
	WX3qDNP/obC/R5hzOvoCa9iHzYSNbjSftKfujODHG6hRZMm5vBONkhDIDMKDysss+O93GD/JIOPFj
	0P+3zVUWS4mLXfDTXm0TJt1R+KDoX4QFOtnNaDTIiJV07WTZH/ygUGwGFa6W5Ed1JmdlnDMAuUNxx
	AZUkViXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7hu-0000000DHKy-3Sld;
	Sat, 31 Oct 2026 11:57:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7ht-0000000DHKs-0Vhb
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:57:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 52AA0600D4;
	Sat, 31 Oct 2026 11:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4CB71F000C1;
	Sat, 31 Oct 2026 11:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793447828;
	bh=YtiE6l/jMigtM/KHoQgcbm5oDWmgzE5zJPhM1/rh6dw=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=eW2gBxVFmypKh60k0hQ0/3BUzSAxOvyyvaPv30fKxVKkX3d7lTQff+ZnCBo4cyXtr
	 3X8VECjz1UcsA0wIJqjUasvYltIurB+wxeyBImZt3Fo8WieHDiRtDrJeT4zYREzkJA
	 E8NXre2MyTzmcrZjN0qdeRIi8Iv3L0hC7aIvtpRQe8ATPT+9WzWTobHy6A2S0ZKDI6
	 y45Uat9UePmiMIBE4oeI3GMZaTmVzyQwIoKDKJ/s8nhkadSfkaVT/VB1VLX+F6f8Kc
	 KKI7hfZNfLdfTSyc+Fr6J3VjKd4NJpPvhN2oZ9rChiJCr+KzISoL8iBv1GJGOi3OI9
	 rEOSUPKTNh2GQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 0/6] Add support for USB phys in IPQ9650
From: Manivannan Sadhasivam <mani@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>, 
 Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 17:26:43 +0530
Message-Id: <179344780362.5901.2262729829662858890.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=585; i=mani@kernel.org;
 h=from:subject:message-id; bh=sWYwmb04EVM38ISfK/zjGtFwBFhSz7gCtNzj3VIINfU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5deK8HsBAkAOEMrzYnDKCKJ2EW0Bef/1JCeh7
 aqrdbGvmq+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXXigAKCRBVnxHm/pHO
 9SLYCACk7rxS9tdBb0wj6XnxWq8q7eeggfhP93Et1R+R4LS9ysORMOElyoithnQr5XGKMEd+fot
 S5CcNzOwApSIgpXKhWmGFqvXXc6fmWgD84nX2Rmhmhb5eO2BWA+4c0DdhKNX1Zi4VFL9+zlGF7i
 iH746cAQ27AkTutnGQf/YPxWOFq9xrmoVZIeRJ/nXC7TsihCk3qfuZ6W8+4RwQW+mjJm+NU4GVM
 9CmxG1KiR4tdYUbxVaffp+DbT41ncES8cviaV+7fRCAO0onGeFncBoujMqQppzDyRV4VFKdbzFG
 4IRcus31HqwmVSE5Exmke9Ex1Hlm/ozX48T9KJBcqMwk30BA
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

On 2026-10-09 10:19 +0530, Varadarajan Narayanan wrote:
> This series
>  - Adds dt-bindings and driver changes for the high speed and super speed
>    phys in IPQ9650.
>  - IPQ9650 specific init tables to QMP super speed phy driver.
>  - The Femto high speed phy driver is refactored to accomodate differences
>    in the init sequences between SoCs first and then support for IPQ9650 is
>    included.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
