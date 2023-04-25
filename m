Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7132AC6FD18
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 18:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a7fQuudjz2JkBbS/Q08sSjB6dUpDuk00X6o6xOBFSI=; b=QRzkt5jRFnU1VR
	mxI23Nymk5WzaTyo/KqELWPDApLTqmjMMNPV4JXqKXOZq2r0WfoiCurGtipZGV6Qa3LiuysRvavk4
	4gxHlItKf0+GovLn7xIUDbBUh/hX5M5UlYYOODGzHBEVUFUA3VzYPFH2q7GzmctcZ3JuKquJAWy8y
	SPviT9B8SKxfS9IKXF86WTCSQmtpkxCRaj5lcZWz2MkkJCDv1T5VTQI4cV26WkA1SpHboiWknlsUM
	mhKP2NFO4cGtLsFCH9pD1LtodoNQ83pk1AkMLk2Pe23gzegjiTMmGbe/yKhJ8jmF5yZt3Y5Cu6Fe1
	HPMSxjlxGaLARnPXKMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prNYX-001xd4-0b;
	Tue, 25 Apr 2023 18:38:25 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prNYV-001xci-0Z
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 18:38:24 +0000
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-38dec65ab50so3525242b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 11:38:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682447902; x=1685039902;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TSCz7QCmWjwuRcVpOo2qZlT76Hnne+7Du/Iuknn3Qg=;
        b=kPduSCZ5g/HWz2OJeMGhf8wy2VIga0Mjlk0HAuzaF7VmMT43ZeuERrxvNrLOZ19O1v
         f1oCcTIYD+Kvz/N8+WKtT3Bz4L1+5jnpJBWuLWSrcJOZ11ehxF9P0mORjlEnxYgSRAw3
         xDeFdOM9yM9NW1l9zQFGt27ecCPBQXLMeL0SbwXTRViyYdsaTlf83WgAeb76WzizEEid
         PFYwYJSmWaIVTHTYB2YrR+gf2exTCafhLE4yrXq6OyCNpPMJ9d9GVnr0EtVu7hIKICG8
         AJP3w6Gogm8JSffJIVrpWCbaXJMVfEpFypbdp8oEQ3xxU92Mz2InUOznOQvRcPkcNkif
         afog==
X-Gm-Message-State: AAQBX9erWykBQ/uDf8O/sR2TaBlho25u+3saHwqGM5n5GjY/uhNKNNet
	tUlor7prOcLe4rFfQVv9ouZnNhYf/g==
X-Google-Smtp-Source: AKy350baxMv1XV1+Ib7RtbH+radYPwF8Djs2uNuSzsYTcwt0TF3nKAN8Iz8fVFAXUp+IQJyPzxBzYA==
X-Received: by 2002:a05:6808:1597:b0:388:fff3:61e6 with SMTP id t23-20020a056808159700b00388fff361e6mr10967697oiw.38.1682447901864;
        Tue, 25 Apr 2023 11:38:21 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m129-20020acabc87000000b0037d8c938d62sm5834891oif.50.2023.04.25.11.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:38:21 -0700 (PDT)
Received: (nullmailer pid 2061092 invoked by uid 1000);
	Tue, 25 Apr 2023 18:38:20 -0000
Date: Tue, 25 Apr 2023 13:38:20 -0500
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: quic_wcheng@quicinc.com, linux-kernel@vger.kernel.org, vkoul@kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, agross@kernel.org, gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, linux-clk@vger.kernel.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org, mturquette@baylibre.com, kishon@kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Message-ID: <168244790024.2061037.14160381736561499893.robh@kernel.org>
References: <cover.1682092324.git.quic_varada@quicinc.com>
 <f9ba5b4f3dfd299ec7cefd038bc1d9ed5a817b8d.1682092324.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9ba5b4f3dfd299ec7cefd038bc1d9ed5a817b8d.1682092324.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_113823_217933_37CBF103 
X-CRM114-Status: GOOD (  11.00  )
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


On Fri, 21 Apr 2023 21:24:45 +0530, Varadarajan Narayanan wrote:
> * Document the IPQ9574 dwc3 compatible.
> 
> * Make power-domains as optional since IPQ9574 doesn't have GDSCs
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---
>  Changes in v9:
> 	- Place ipq9574 alongwith similar SoCs instead of new entry
> 	- Make power-domains as optional since IPQ9574 doesn't have GDSCs
>  Changes in v6:
> 	- Made power-domains as optional
> 	- Resolved all 'make dtbs_check' messages
> 
>  Changes in v5:
> 	- Restore removed constraints
> 
>  Changes in v4:
> 	- Update other relevant sections
> 	- Remove constraints not applicable to IPQ9574
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
