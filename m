Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAA1C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 12:23:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C6406108E
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 12:23:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8C6406108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0yOfs0rZ3scUByAi+gBDTQ4MRU2HvhyLrBANBl90+Q=; b=LJ1ughKoqYWIpc
	+ACiURzjtMHiCW5PpHgKSoIomqQLKxKVjrO3UwDLfkAW6EHm0PTJD56jMhcZiwW1y3eOVlqL4XNQ9
	i6PAR9F/HPBcDbz+c0CVizAcCI/ruILaBwGX6TuAjYHWkrA+k6QMKT68ISxN7aJbmCFc9foBw+BBI
	CdWbkLaLnlC9v1XuMgj4yVEbtshHJS1GwRCXrKB5Zy3EccBy50+mftCK9D9xdvU32RIzmoRW+il9x
	Gy8nP27lfu8r1PyMAGKF4YGPQi2iSX8gNVKlhUmZKcoR5RhRiMh2+joTR3ysx8vqYcJKJo5mwXv1S
	z0ehBJlWb6LZ7ed938Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUpfW-002bSF-3P; Mon, 27 Sep 2021 12:23:38 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUpfJ-002bPF-J6
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 12:23:27 +0000
Received: by mail-oi1-f182.google.com with SMTP id 24so25397277oix.0
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 05:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=2FOjpTM0F8xEU8mS0E5tOeoZE2kq70fSbscAVWi7m/M=;
 b=m3zTG+othqel/XM5ZHIbQAmtLhvPj7/n7XYvNc6lq9kGt+M2K5NUH8XwrPfNfsqelg
 Gt3oc7ismVyvvGnFjimm79/p2DWktc005BQ71F29PBGNmKtOuPrv7po5Awz5plwe0lrQ
 LfvFm3G6k64P1ju4mFlSNIMxYndo7CCSQlhrUPyGUNRvTXat4zjbS5PVa8mkkIGcKElK
 dRLCFVPRzt+1FO+u/Ddp5DZcikzQ9pGr+mTFEgcjN4buwmLUJs4M/BdmUUHXBLCXqbsg
 fbzRbVgh6V5p0ujUawGezeI4y6MlsS51gsrbIRchzRj9tSdyxFoHvyX4Byf9V1i3bJei
 7Zjw==
X-Gm-Message-State: AOAM532XH5MQUf5fwlyNG2n6t+W5GC8AMBoxbDJb6d7cKybdQGP+TWTH
 eLBnlYXFZ7oaYuV2rfnbjw==
X-Google-Smtp-Source: ABdhPJzAyWHfcy6Itaqvn8xBgYCq3A1CQXQnAw/QYF83umPvAPC9IBhN4BKD53X/0roppKfMVqvcFQ==
X-Received: by 2002:a05:6808:543:: with SMTP id
 i3mr11912240oig.46.1632745404285; 
 Mon, 27 Sep 2021 05:23:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w14sm3965493oth.5.2021.09.27.05.23.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 05:23:23 -0700 (PDT)
Received: (nullmailer pid 3097155 invoked by uid 1000);
 Mon, 27 Sep 2021 12:23:19 -0000
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, linux-phy@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-kernel@vger.kernel.org
In-Reply-To: <20210927044824.30246-2-shawn.guo@linaro.org>
References: <20210927044824.30246-1-shawn.guo@linaro.org>
 <20210927044824.30246-2-shawn.guo@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
Date: Mon, 27 Sep 2021 07:23:19 -0500
Message-Id: <1632745399.271628.3097154.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_052325_647626_617E5769 
X-CRM114-Status: GOOD (  11.05  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 27 Sep 2021 12:48:22 +0800, Shawn Guo wrote:
> Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
> PHY digital circuit operation.  Add it for correctness and completeness.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.example.dt.yaml: phy@7411000: 'vdd-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1533177

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
