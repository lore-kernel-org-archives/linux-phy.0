Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71E7C54E76
	for <linux-phy@archiver.kernel.org>; Sun, 19 Nov 2023 16:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPqjIS0dqWtuH9LXcXbTqyn35NQpcdPrWn9mWFjPYTE=; b=h/Fhb5jboA/7eP
	QoWtaFkJR6sr3ulaMMgAQq4TM7sIzA38ZgKwYdhGUYE6Q/jvEiJ19dzfc5w1nRU6hWoaOlQqykdz3
	6RPMFSxJo7t8VpojViK36GfzG7ppXMosec032JlHCobpbOykM9idIijIx7lMFwSruBdxA2KiI/QXX
	BN73TwqlFY+JHuM828DbskDPMaWaEi7lgKucYSro+EfqRdXi+SLrKmUE2/UPK1E+RMfdJZd4VR+N/
	yYE2qFdwzH3rW4idKTGLeW9NqsOQomgYHkyUlt14MobPm/q6b+YXM3mxi4x1ZJzzYYbQi1EMbZJCv
	SjjNzVyoRJYZyRtBXgJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kPE-00ANT7-29;
	Sun, 19 Nov 2023 16:12:20 +0000
Received: from mail-oa1-f51.google.com ([209.85.160.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kPB-00ANSg-22
	for linux-phy@lists.infradead.org;
	Sun, 19 Nov 2023 16:12:18 +0000
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1f5eac85e0eso245449fac.1
        for <linux-phy@lists.infradead.org>; Sun, 19 Nov 2023 08:12:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700410336; x=1701015136;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U9wcYFKu/4xwRGovh8aoKJ15XNK5juyU7wr0t4x+NYk=;
        b=E7VwN1dMPzvsfkbaiaEK5TP8fk0O6MgXi5Twkuf1tHJ9YQQOFriH5oDT33bp0d9C8h
         OK98O5eHCvOvk+oNBUCpibNYxzRzJw5JROTLDZmxxOlr6MqD5U9bZbNdoIC7PwJqvd9v
         77NLuyGgnwh+cyUJAZm1omAw8T3o4QOqF+atBODrMTgKqEC3Wq+kNppLZ1+m4LGa5mUx
         AUJPXHJ7tLlEbD4SBF1KLewbzRlKNTEXWVLwfiLRP/wwilHywcBPHjWorlQQRPsWF7+J
         lg+ZKetD6d2HTVq6uh/5lOUZci3liofK9XM3RaztfxF87xC4fXafZTLe4m/4159EpYgA
         OqBA==
X-Gm-Message-State: AOJu0Yw15bT0BTKwfQo+yDbWbz8hK3WntSNKnqQ5ewBj0kGQaR6UL03D
	hIrJKlu2VlbckWVUgcFbTA==
X-Google-Smtp-Source: AGHT+IFCMFrZti8PpN/lFswF46l2wJq6Hul90zROrny7QB9J/yWMCYjnlFUfsW9EBVsNr0UEmHva6g==
X-Received: by 2002:a05:6871:a417:b0:1ea:2447:5181 with SMTP id vz23-20020a056871a41700b001ea24475181mr3714421oab.9.1700410336292;
        Sun, 19 Nov 2023 08:12:16 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id w8-20020a9d6748000000b006d4760cc054sm895328otm.3.2023.11.19.08.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:12:12 -0800 (PST)
Received: (nullmailer pid 276534 invoked by uid 1000);
	Sun, 19 Nov 2023 16:12:08 -0000
Date: Sun, 19 Nov 2023 10:12:08 -0600
From: Rob Herring <robh@kernel.org>
To: David Wronek <davidwronek@gmail.com>
Cc: cros-qcom-dts-watchers@chromium.org, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Avri Altman <avri.altman@wdc.com>, Andy Gross <agross@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Joe Mason <buddyjojo06@outlook.com>, Bjorn Andersson <andersson@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-scsi@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, hexdump0815@googlemail.com, ~postmarketos/upstreaming@lists.sr.ht, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v2 3/8] dt-bindings: phy: Add QMP UFS PHY compatible for
 SC7180
Message-ID: <170041032722.276472.12995165912744202570.robh@kernel.org>
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-4-davidwronek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231117201720.298422-4-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_081217_764989_AA5425E4 
X-CRM114-Status: GOOD (  10.07  )
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


On Fri, 17 Nov 2023 21:08:35 +0100, David Wronek wrote:
> Document the QMP UFS PHY compatible for SC7180
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
