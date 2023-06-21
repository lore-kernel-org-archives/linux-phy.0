Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B05E1EB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 19:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QU9rvqm9Y8uKQI5NV4dH9gJiiAxNiIYfWS7S1hVLgVo=; b=cCgh3klMN69mtK
	QIWBGkwU/qSTn1ICmYahSEJhgYHKU3ey+j+X5eYMWF4YdCehyz2Tj7S+5wZkE2uDCz///vyb6MGyZ
	dDBUEanu2b8QwbFItT0AJPp96bc04JUQ+Dt7Tdp1LMNmUiZ8JzTAGhjOxorMXCqsJEdQKoNStR2pg
	hPxu0f2c1M/QI+7Lr0tdRDZ6EsZ5ffCerRV74Jw3/v673Rn0n9k6hX2VgjPRq5jQiCqPk7Np1jsIw
	328uzrxleoNjwBf9Sfo1CCdtmkrlMyx6WVZLDOnk6hctG7lsBV9gQHg7PRUVEggkFwJg3o68sGVhP
	UjkhQUAd00UeyVtAPf4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC3op-00FaiR-0n;
	Wed, 21 Jun 2023 19:48:43 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC3ol-00Fahi-2j
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 19:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687376917;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UUjTfOMiTDAfT6Cmu1/glc6GXab2oB6PFs6v1uS1dIE=;
	b=Yr9hSakSbWMS0NPCM2+hZKolDpQceYbmedypj9I9XPf8OjN9hbZ7AgWsfEWnnEHzPiXcpg
	TZP8VsNWBb/qfr3Gzd6qD0EacF/T/lh5HTraGvUhP+Y2Mt7t9VzvyNzdBUHTl7wt8ZV9x8
	cZjScwtheuzgUEpREXUujYjy7laJLCo=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-Hp89EkSqOPmx62FCcS-9eA-1; Wed, 21 Jun 2023 15:48:36 -0400
X-MC-Unique: Hp89EkSqOPmx62FCcS-9eA-1
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-56561689700so88936867b3.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 12:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687376915; x=1689968915;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UUjTfOMiTDAfT6Cmu1/glc6GXab2oB6PFs6v1uS1dIE=;
        b=ERg1T2/ojhEkluaNpY1/ukZMfVtO3JHWByV5+4jSng9gL5QY7xEO3tyaUswzE3l/aC
         Q17w8gLACTvlY2t5KSni+jMU8Rqu+usVr7VwdSd8RbCaPG3X43enXXitkDP2InAsCRUB
         Y4UH+YtnACGjVtEzPK2bVM9edA5RQBxQdfqth9JGV2Lf7s6X9d1wYrQ2DDQzaBrEi6k7
         IUJuahqaM9gzb/lGGoRM+z9lWf6y5KPr1AhfP54eXxt4zl5m1oRhm92Bv/cWHdaH2Fr7
         71KzzUm/ib5f2VID418wwPhtO0QvxvzsUmLd/3Q4gM1cA7B3/KJXhCiz4ev8MIbLn4d7
         bFkg==
X-Gm-Message-State: AC+VfDzeZe6Dl68rjIc+tBCwa2nLMztC9IQKhVOocuRCkDMqXgXsRcSW
	nRI6yYcp9C2J9OLx12wJ4pgAlF4PuosmaTJn66nqeTQNbeskOBVAgTbYpOEnQP5QSWHdm5RaLOr
	ELPa3V1L5vlowdhqsdKsh+E18TA==
X-Received: by 2002:a0d:d78c:0:b0:56f:ff75:abcc with SMTP id z134-20020a0dd78c000000b0056fff75abccmr15343908ywd.29.1687376915780;
        Wed, 21 Jun 2023 12:48:35 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6aRgDzpHAchzZwwGdJmkGC2tMVRjmjZQuw6bhlxfBLu3SQyZ40I9CNjGsElLG+CYm+0cCGdg==
X-Received: by 2002:a0d:d78c:0:b0:56f:ff75:abcc with SMTP id z134-20020a0dd78c000000b0056fff75abccmr15343885ywd.29.1687376915527;
        Wed, 21 Jun 2023 12:48:35 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::f])
        by smtp.gmail.com with ESMTPSA id i15-20020a0ddf0f000000b00555d2944284sm1322757ywe.67.2023.06.21.12.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 12:48:35 -0700 (PDT)
Date: Wed, 21 Jun 2023 14:48:33 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Message-ID: <20230621194833.iflhpjp3vtsdi3fc@halaney-x13s>
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-2-athierry@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20230605184455.34832-2-athierry@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_124839_976215_E12C0D4D 
X-CRM114-Status: GOOD (  13.61  )
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

On Mon, Jun 05, 2023 at 02:44:53PM -0400, Adrien Thierry wrote:
> The driver is not enabling the ref clock, which thus gets disabled by
> the clk_disable_unused initcall. This leads to the dwc3 controller
> failing to initialize if probed after clk_disable_unused is called, for
> instance when the driver is built as a module.
> 
> To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
> clocks at the proper places.
> 
> Note that the cfg_ahb clock is currently not used by any device tree
> instantiation of the PHY. Work needs to be done separately to fix this.
> 
> Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
> Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> Signed-off-by: Adrien Thierry <athierry@redhat.com>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
