Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89788C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 11:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRldO1hWPDLa0mg19BT3CTAyCaibY8aXzhFYhNoE21Q=; b=01dS1ABqxPE1/C
	6QysDYLiiZHUjit/UuKzIQeI36be/8z1K+iIJCwe6uxJ/GZYEmRtkeCccFgTTXrkCXLw6BMJxAhr4
	hndJCdZYSWdhZTevIgAOxaDkDBe6xtjyqq4R29sx6eWclugPi6IhQxOJm4iqs06vk3l1xBO1mX7vN
	AQQ6noikFZi44asrp9CEIKJ1vqJdHcXApBQ9HiB+qLSe4a/PoHIQO7ubqlxj5g6VyI3rWNRaYeVXX
	GTFURA3cGx3N4lgHSO70NlKUeJn5ZjVRAvsY39ah/qS1WBwRc2JkIxDhbmelCdAWlqn3WhzCgYzEB
	PvyEJ+c1da+0thbWT+ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTidl-0056mf-1q; Mon, 14 Mar 2022 11:13:29 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTidi-0056lP-Ih
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 11:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1647256406; x=1678792406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VfBrAu+qBaUATnWxIS1MDajha/eQ14Gcbh4gLGvfVKs=;
 b=ygRPhWKW2zdGa7NWBBZLqwXMJkWlB4dlfuqXPYgQfkQfy03ApqreiRC5
 ZSvTRcJ/efRXK0yI/W1ixkALcnxCTCQsWLIdynZSy3LItSvdx+VwdL2Pg
 yVIosPULl8kvvOtHdd5JmK8TaZxbktDP2QPl9wV4ZLuH9lg2GhVeZ0HYq 4=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
 by alexa-out.qualcomm.com with ESMTP; 14 Mar 2022 04:13:25 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 04:13:25 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 14 Mar 2022 04:13:24 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 14 Mar 2022 04:13:18 -0700
Date: Mon, 14 Mar 2022 16:43:13 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
CC: Pavan Kondeti <quic_pkondeti@quicinc.com>, Sandeep Maheswaram
 <quic_c_sanm@quicinc.com>, Rob Herring <robh+dt@kernel.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, "Kishon
 Vijay Abraham I" <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Wesley Cheng
 <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>, Doug Anderson
 <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_ppratap@quicinc.com>,
 <quic_kriskura@quicinc.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Message-ID: <20220314111313.GA6889@hu-pkondeti-hyd.qualcomm.com>
References: <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
 <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
 <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
 <c88396f4-4cfe-d375-1dcd-b34a6496cb06@canonical.com>
 <20220314094054.GB28402@hu-pkondeti-hyd.qualcomm.com>
 <b45b3b7e-e1c0-79b6-81c0-53c70427dd10@canonical.com>
 <20220314103045.GA31533@hu-pkondeti-hyd.qualcomm.com>
 <fadbc93f-8741-58c6-d0e5-dc740e0f0724@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fadbc93f-8741-58c6-d0e5-dc740e0f0724@canonical.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_041326_671045_249172E4 
X-CRM114-Status: GOOD (  20.16  )
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

Hi Krzysztof,

On Mon, Mar 14, 2022 at 11:41:27AM +0100, Krzysztof Kozlowski wrote:
> On 14/03/2022 11:30, Pavan Kondeti wrote:
> > Hi Krzysztof,
> > 
> >>
> >> Ah, I did not get it. That's not the solution for this case. defines in
> >> dt-bindings are for constants which already can be in DT, e.g. IDs. Your
> >> register values should not be stored in DT.
> >>
> > These are again not register definitions. These are encodings that dT and
> > driver can use. These would be constants only, no?
> 
> What do you mean it is not a register value? I don't have access to
> datasheet/manual but I can clearly see code:
> 
> +	if (or->hs_disconnect.override)
> +		qcom_snps_hsphy_write_mask(hsphy->base,
> +			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
> +			HS_DISCONNECT_MASK,
> +			or->hs_disconnect.value << HS_DISCONNECT_SHIFT);
> 
> You read the value from DT (e.g. "3" which means 6.3% for hs-disconnect)
> and you write it to a register. Directly. 3 is a value for the hardware,
> meaningless outside of it. It has meaning only in this one hardware
> programming model. For humans it means nothing. For humans 6.3% means
> something.
> 

Right, This is what I have been saying will change. we don't pass the direct
register values anymore. Instead I am saying, we pass the percentage
multiplied by 100. For 6.3%, user will be passing 630 in device tree. for
-2.75% user will pass (-275).

Are we on the same page now?

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
