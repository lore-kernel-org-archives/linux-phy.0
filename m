Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9AEAC76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 18:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beCfEIc4NAGM3djMiHYM3E7xUAfMGv62caNTTJsyfGo=; b=b7dDiOwF+ydc72
	YR9kdTeauY/pT0UkHtbZxcpvsC0qARR8Z5VVddrMmbr9kOQtdcJ6JVQS+8ERb8EWKoHxismubsMCW
	UwoVs3PL2A8rh+PWko3Xui6fRuckILux2xwg1h9q/rNi1oj5NQsCGkgxCyDLlhiXDzfPfY7ug85Q0
	NEW62olD3WzgKbCb0nCpDKGq+Aju7A2eTHbTW6wK/UeW7UJHGPWK/gEtRkW3BKEs5tDKQDEbSgZYR
	O5k0TGPj9CHQLoZT55QXGAG6XsiLOq2I7dh06EgmDPyNMAW4hEogOWUFM06Elq0fzHmjFEhPvJSlv
	1O+JkspYrjFX7Wlxpgrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piJv7-008XvF-11;
	Fri, 31 Mar 2023 18:56:17 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piJv5-008XuF-05
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 18:56:16 +0000
Received: by mail-oi1-f172.google.com with SMTP id bx42so1848788oib.6
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 11:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680288973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRYjfKN3eK3vnBIG5oj6mxdR/iFPW7kkC2GPzDxU+F0=;
        b=H7OlMp2kUoI0IzCGIcp2Z03HNBeKd6KGjmgB2u1b2OQeXexd2+AqwyL/Up7YtLyT8v
         2iZccQBm0y6+OwnflyP6k6/CGOG8xaZKgItZQbzSL3Ex9Fnbe/mSwy5d6Xajaeln7CcL
         JHNNShTubUJtbf5iVqiEBnAk//rAQGe5FvHRkvFo4yKKmnpQKq/Hs5G219dSJGl2Qj5/
         cf6Wk735owlxuRFpoU+XjZpUnT4CI+PNm41w3I/YPj2J9VIf8zwX2W0/yygqKpV+xgoN
         XVeBmEQ5aqfVKLOXuIefQoFnPFy4oCkSt2dF7uJzaeoj8ezOXctq1Umn6sE5o5R2LDHa
         aNyg==
X-Gm-Message-State: AAQBX9eXxLXpDy7Pz7JLTlU2tnwDWAp+SH9czrezdJgFIpx0h1PYJSJM
	nM4RA+m7oJUwLOYmMf7Zvw==
X-Google-Smtp-Source: AKy350bIDeTcfXjKXMCdouCUmqZoQzF2jlr3OoSKVKdzBeGpGQzJ5XI0jorXx7xo1T9jDrsYb0ibDg==
X-Received: by 2002:a05:6808:13cb:b0:389:7d24:def5 with SMTP id d11-20020a05680813cb00b003897d24def5mr3621775oiw.10.1680288972707;
        Fri, 31 Mar 2023 11:56:12 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w8-20020a056808018800b003896b3269d3sm1263329oic.20.2023.03.31.11.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 11:56:12 -0700 (PDT)
Received: (nullmailer pid 1946699 invoked by uid 1000);
	Fri, 31 Mar 2023 18:56:11 -0000
Date: Fri, 31 Mar 2023 13:56:11 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add
 sm8150 USB+DP PHY
Message-ID: <168028897102.1946640.12125439806794137069.robh@kernel.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324215550.1966809-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_115615_064806_2BEDED1B 
X-CRM114-Status: GOOD (  10.62  )
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


On Sat, 25 Mar 2023 00:55:46 +0300, Dmitry Baryshkov wrote:
> Add bindings for sm8150 USB+DP PHY. These bindings follow the older
> style as this is a quick conversion to simplify further driver cleanup.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
