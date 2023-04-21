Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED4BC77B76
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 19:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ8Zg6i4A/YdmqcO18h8bcutYloqnxd7yB+8WOnypaA=; b=VPiCKu8m2LgPRK
	XCkcV79thBcIetBDHzsAqBLxGV/7beBLxrTArMM2GcI+JanZt07bmsACtLl1NO/rB9vlKIoeAfFGQ
	8xyFRf4yI0J9iRcBdoVEa6rU8U3b5IIHQUr0y1dV3RpMgSpJh6HCjWEPpOBPbh/CEBB4Am08XOo7U
	l8oaoXCkPv36enn+Kd0U0pwEP44GdLGznqEWdFGl6UiUVd8+w/8WxFuMeog0up8zQy/Ndzj4fUrh+
	N/+AzLD0IZWr6uiwf0ZDh9WbmRut3kEB4PsIrX8ujTH8VbBWGAzR395MfRBeNz8Lw3Vl9/WTSdKkr
	QIbSTGemS44VLV4iJ2ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppwkQ-00Bku7-2c;
	Fri, 21 Apr 2023 19:48:46 +0000
Received: from mail-oo1-f53.google.com ([209.85.161.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppwkN-00BktR-0z
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 19:48:44 +0000
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-546ee6030e5so1239994eaf.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 12:48:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682106519; x=1684698519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TkPnOUh0neb4MVTUrbit7nLJd4t84y5z0PgNA0afTZ4=;
        b=PVbRsczuU9v8geGA1fvKMUb3hjqY5ojApWcIYBt3IZYcuM7v2MKE42SMhPaeLVB6hO
         OalDxzA006r0Tq0mUGtDb9MhN2ggh9sCPrK4BLvKfdQqJ1txrFVFoFFg44KCWk3ujmba
         Y4V4Id2vwtf6X9HW3dFTVUufJ+3m3rPrl06RJ0F1fQTqNH8Xe2lSG6UBeYOSoc0pIAjm
         yLd0KTgvx1BNnVpAIN6ZBtSVKCLyRbpx4mS79eW1eAzSf5bJSWbtn/kkGaonLUWb7q35
         BCN6ysJt6ani6pQswNdd5hNC6pYJ0EVwTPoUaZj84YZ+TIUwCbo7HWDKeu/Hx8pclCCx
         PJpg==
X-Gm-Message-State: AAQBX9fR1aV1hgVxnezD1x6dt8zGWMg2xu9X5i5uaD6txCbP8uZUiFRV
	G9N1AElQdf10gGsTS0aYRA==
X-Google-Smtp-Source: AKy350aejOyl8OwPSFtGuW/8nDsydNRzme6iufoYXCm5IQo1b7EplyTp4nb/p6Zpes8WUkyN1b9qaA==
X-Received: by 2002:a05:6820:1b89:b0:547:6a79:18cb with SMTP id cb9-20020a0568201b8900b005476a7918cbmr321342oob.9.1682106519367;
        Fri, 21 Apr 2023 12:48:39 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m41-20020a4a952c000000b005251e3f92ecsm2045502ooi.47.2023.04.21.12.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 12:48:39 -0700 (PDT)
Received: (nullmailer pid 1673608 invoked by uid 1000);
	Fri, 21 Apr 2023 19:48:38 -0000
Date: Fri, 21 Apr 2023 14:48:38 -0500
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-scsi@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qmp-ufs: tweak clock and
 clock-names for sa8775p
Message-ID: <168210651750.1673545.13199192508532033264.robh@kernel.org>
References: <20230419120914.173715-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419120914.173715-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_124843_349334_16E8F414 
X-CRM114-Status: GOOD (  11.64  )
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


On Wed, 19 Apr 2023 14:09:14 +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> maxItems is already globally set to 3. To make the binding easier to read
> and remove redundancy, set minItems to 3 for sa8775p as this platform
> requires exactly three clocks.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
> v1 -> v2:
> - rephrased the commit message as this is not a fix but rather
>   a readability improvement
> 
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
