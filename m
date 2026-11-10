Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271C5606B9F5
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 09:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FqLq5hOl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NRkObjOW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zWj9JkfuU57tgmC6150VrruzkZszd0gu3z42USNfiXE=; b=FqLq5hOlnbDeT/QFDfc30/dcOg
	oH6ZC4NLlhLRTDw5rPhv1Uplf02Zs+tpyABIwD5Fi5PphveTrzniZ9ndzDrzzugj0G/uycgH373dA
	BPR4W3haITU9y0BLE3s9U796ktOqCm+UH+EJ2upJt1uvcI56F1xgU8BOR1X7wL2zDlmWPzMBEtSeZ
	SM2kBiZlssQyt/ribZmWvRrfm1rlnBzxJDbJVeT66p5pAyQM+eC/ts0ivb34avK7zswLnnszsRM8f
	fz+nPu+Ft4ZB8n48rw2cGDSKVBy3pCu/FSU9poMJvKdUAx0wX+yuavFHuakEtK+CWoWWCupnHkIpG
	ZQk9Ih6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQi9M-00000003Ggh-3eyS;
	Tue, 10 Nov 2026 09:28:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQi9L-00000003GgE-2Xv5
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 09:28:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A71C76302C;
	Tue, 10 Nov 2026 09:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 871E61F0089F;
	Tue, 10 Nov 2026 09:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794302898;
	bh=avaoukR8O4DvWXprhfWe7DumS7ND5hwn7PH19Gy9dCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NRkObjOWkxf5/L4h8og8ODcEp7Ne31cT2Cc7Bu80WByDlLnzqLfABSFFlVOTWh3Gj
	 6laLuxgVQj0mIOQy7cu5wOyO/oV5PlinsYB21JYsBJJQezE8SvqL1AVwpAcI5sVDIQ
	 Sg6OofOiKWsPM6DZ67ZL9FwBkkzlOpnksfhjbxnfQ4fDzCaTybJaXMSIWi7hd4Y6he
	 KlDKVSqXIb1wGZtmP7mi3D0g/a27d4NZjQdbxdjPbSimISfMAcjQv3PQfG0JtlX65o
	 hBFDLxLS3gvQId2wi0ohWOKdFYzxiZ2VqW8gJSTwGA/TSlrcKDduX88EOgukDYHy8h
	 PTTGjm1MUohrQ==
Date: Tue, 10 Nov 2026 10:28:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v4 3/6] dt-bindings: media: Add CAMSS device for Hawi and
 Maili
Message-ID: <20261110-mindful-snail-of-business-fa211e@quoll>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
 <20261106-hawi-maili-camss-v4-3-d528c7a797b4@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261106-hawi-maili-camss-v4-3-d528c7a797b4@oss.qualcomm.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 06, 2026 at 12:20:44PM +0530, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Hawi platform.
> 
> The Hawi platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Co-developed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---

Amount of dependencies here makes it not possible to apply and b4 diff.
I don't even understand why PHY patches are dependencies for media ones,
but if that's the case, then this must wait.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
