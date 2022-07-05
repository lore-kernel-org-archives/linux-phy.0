Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DFFC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmYUUqJrQU/RQoONmebj0MR3MQaozPJKZIHv48yZWVI=; b=l2kpKLk1m+ZbOB
	GpSMt1A4rPuSiShnio9iFdZUHA6PBH504szBopAq2v5OI88yrG5RLdxL67qmueSsQidTyKu2sWUA/
	MUrmOqzeWRIEdzne+t+IdTLw/hWBJYC9gzYlN2OA8j4L0fKKmv2e54zNrI+nhzIQ/SWi3XIFEZqGN
	8t0EDpHufjoETnki7l2OT4pa4s0nn2LSSe7719znpPETjmITAAH6cNJpaiBiGO0c5I6/iE2rL9Oyh
	DdOouwdb2e3mQ5UNOM/pwsLd8iazptoskQLOcDtDyMGh9G44RU8v/1kTDAUzYWGHGsGnk2l9wdhet
	V0f5oqNhyWrv8uBmiazg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gEK-00HIWW-J9; Tue, 05 Jul 2022 10:56:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gE9-00HISj-MC
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:56:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E70E560C04;
	Tue,  5 Jul 2022 10:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4049AC341C7;
	Tue,  5 Jul 2022 10:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657018579;
	bh=j1oJZmU/BD2PKhSkrFTBAPRMJhqsYWZdc4xtZEXxOoI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k7wWsL0POJ6OcEQ4FJaNLKW+MosT1/EAneUZUt1+Imn+qZyvAgpe0SSlQcB8ubSy+
	 5uOutuOtX9rHfApzLHlnXsCSc2/Pgyq4hEnZ0A33kKvTeImvyiVg/M9dBBK8OmPHEV
	 1VouRw8aUyUVoIZMxsfSpokyIgIZPWb+r3rAVfEzaEANNEjiYKECBxr0siTYEkdPTJ
	 uHi+Elt1P2Fajmhml2aZn+j/bYn0xnYZN1bj+4YoAN91llVeHik/Dqwpyyz6xj5BOx
	 LyDFddfoIEq2ZGOY5LwSsKO1/YL7Tdl/l0+Mda+yE+lOp3vGW6sTQkIk8B6Q6EmVzd
	 mi0RDe/cSVJXg==
Message-ID: <43a075c6-ff48-acf2-0be7-634d292daf30@kernel.org>
Date: Tue, 5 Jul 2022 12:56:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
 <4b4b08af-887b-89e9-b4a5-93e7d8a03222@kernel.org>
 <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p6>
 <20220629071829epcms2p65eab75702495a939f3f6e4ea020181de@epcms2p6>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220629071829epcms2p65eab75702495a939f3f6e4ea020181de@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_035621_814879_AE3D9471 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/06/2022 09:18, Wangseok Lee wrote:
> Just a gentle ping for this patch, if any concern on this patch please let me know.
> 

You received comments to fix in this patch. Exactly four. Four important
points to fix. Therefore what is this ping about?

Without fixing these items, your patch cannot be accepted. What is more
to ping here?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
