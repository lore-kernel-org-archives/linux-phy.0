Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 701B6C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 19:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s36vQgKeXxD8BXeJnwefSmLDcNzVk+0p1NYL9D00Jg4=; b=5FGPtOsCmJ2/gg
	0znaNFl110r3FmnCXrPdE46Z6J9NDFO+2DVHRgnuo6h1TPvqzrIGEMSqMF3BRcwZorbjVXt5j/M0C
	blLxgOjs8zV14EPpWESkT/bVpbUbFbBYYWUA0aOwy2oFbuG1ROyLYjV/eTvoCWv7uSnRhpUicqSQ1
	OF9FoZsCUmbHdApRx/CKXFFghZ0N2zJQNqZp3KAZo7n5wr8r122ldVoVKqOZUPg6Z3Mf31zYDkV3C
	naF6oBzUodl4as+f5QHUZkPncAoZ4q1NQcHfzbCoOBoc0UbO80F3z6pdV6f/YUwFJ/K/haripTEIF
	xhHMtNUAfsGTHEDtEm5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpSN-00DC5B-Sp; Mon, 12 Sep 2022 19:50:59 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpS6-00DBvA-Am; Mon, 12 Sep 2022 19:50:43 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1280590722dso26307676fac.1;
        Mon, 12 Sep 2022 12:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=jjFDAUThbN7vtt9vwux7lJlDSmQyMgvdlrM38fRSRUY=;
        b=abu2rzL1/B+xQwS5voKP4bfhrrKvd2nLJKHjcvzjdZjh4RyWkgclqnIbNVqCO7v8xY
         V5+DSfVrNe6BqanmOHRUtkNlFcbMkLh4KfhaYOUyseXq/DIkLHV98EA/SfCt/R60z1Yq
         XSTiBwCCkJpl7rss9AjU7J+rs9JVkuShryEZDJNrMl+kaPixpKesG5EIPWRyvOehwU3g
         bjjZj2TkIW/swOeMlFjXjWmo5pnB0fEFVt5RLOauJyrv1i13h5BBUhsy9g77W0tqZGH6
         OAUsoagB6pxMUMkvsoyK3rfymSo0aMK2P9HsEJNxZmrX9sL1yZSVGpfmYmPcRpGZb0Y0
         n4dA==
X-Gm-Message-State: ACgBeo39C72nyMi8UwV4tyyzF5EAjAzUBYWi9IMzR2LV024NNQDSypDZ
	Qx1tE7b7sZ2G98iJVXOAHA==
X-Google-Smtp-Source: AA6agR4nvSs6/oyD1FOnWfMit5/ozmUIVsykwr6OJnIJD+tWOiEEiRnvXwBzhpAsAjFY8W5k4NMK6g==
X-Received: by 2002:a54:4e97:0:b0:345:4cd0:20fd with SMTP id c23-20020a544e97000000b003454cd020fdmr3037oiy.206.1663012241170;
        Mon, 12 Sep 2022 12:50:41 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y11-20020a056830208b00b0061c9f9c54e4sm5058643otq.80.2022.09.12.12.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 12:50:40 -0700 (PDT)
Received: (nullmailer pid 1724704 invoked by uid 1000);
	Mon, 12 Sep 2022 19:50:38 -0000
Date: Mon, 12 Sep 2022 14:50:38 -0500
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Camelia Alexandra Groza <camelia.groza@nxp.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Madalin Bucur <madalin.bucur@nxp.com>, linux-clk@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [PATCH v5 3/8] dt-bindings: clock: Add ids for Lynx 10g PLLs
Message-ID: <20220912195038.GA1724641-robh@kernel.org>
References: <20220902213721.946138-1-sean.anderson@seco.com>
 <20220902213721.946138-4-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902213721.946138-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_125042_480263_0AB6E15A 
X-CRM114-Status: GOOD (  14.29  )
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

On Fri, 02 Sep 2022 17:37:16 -0400, Sean Anderson wrote:
> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
> with assigned-clock* to specify a particular frequency to use. For
> example, to set the second PLL (at offset 0x20)'s frequency, use
> LYNX10G_PLLa(1). These are for use only in the device tree, and are not
> otherwise used by the driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v5:
> - Update commit description
> - Dual id header
> 
> Changes in v4:
> - New
> 
>  include/dt-bindings/clock/fsl,lynx-10g.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/clock/fsl,lynx-10g.h
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
