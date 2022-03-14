Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB03C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 08:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1+DpGLVUJElyPnvROq1vTdRfeXiZMk9SYAYEPSglPQ=; b=tIq+q8gopgYaZX
	ENEupT3MBfwAmAmfiBnc75MWFOWr+vonaKv1sQT9N70tgLMzqIEQumKGRFskd+R85ewzUdutLMgme
	AYds5V/bLVonWauWtbPkQKzJtp6F2OvoLmq88c8+6SNPDIZh5cphhkLgrx8LjnYCuxBxPYNqHc4ZJ
	ekqLsQcOLap8hxyUPb2WEW85JYRjJ/jpVQo7YRjfSaQHtzae2anoxQPlx+AU5tDlIsKXic1tDIKLd
	AL8SZhDBJZjcyjax3C5xZPSmzeppizpKtigFk+V+nyiAqw9R+peheNsvCfZn4Tz50NyVgkrfehrQp
	xawLQinKYnl3vTJpvHMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTgEM-004Y27-IT; Mon, 14 Mar 2022 08:39:06 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfzy-004SVi-LN
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 08:24:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1647246254; x=1678782254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9M2dGLZHOzlDI1I7rEFcYQKVj/YSgpw5OURbl0Zah84=;
 b=CeAoPv6LMnzH1DzQ850hbhasxIAhMijZeZw/blGiwpfSLbHSaIyRA269
 unP2Xy3wGDl+SO5YfvbAH1NIQ7Idqo6nAK/WloWVZ3ig7Fj07iDOYSgVD
 VJIR2VK/CxfyJ65ffV4vhdl4NRCOQqLCGSYav2ojmMxJqHFKhrqvI5v4m w=;
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 14 Mar 2022 01:24:11 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg04-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 01:24:10 -0700
Received: from nalasex01b.na.qualcomm.com (10.47.209.197) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 14 Mar 2022 01:24:10 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 14 Mar 2022 01:16:17 -0700
Date: Mon, 14 Mar 2022 13:46:13 +0530
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
Message-ID: <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
 <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_012414_779584_4503E4B4 
X-CRM114-Status: GOOD (  28.55  )
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

On Mon, Mar 14, 2022 at 08:39:57AM +0100, Krzysztof Kozlowski wrote:
> On 14/03/2022 04:29, Pavan Kondeti wrote:
> > Hi Krzysztof,
> > 
> > On Thu, Mar 03, 2022 at 04:59:22PM +0100, Krzysztof Kozlowski wrote:
> >> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
> >>> Add device tree bindings for SNPS phy tuning parameters.
> >>>
> >>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> >>> ---
> >>>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
> >>>  1 file changed, 125 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >>> index 0dfe691..227c097 100644
> >>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >>> @@ -50,6 +50,131 @@ properties:
> >>>    vdda33-supply:
> >>>      description: phandle to the regulator 3.3V supply node.
> >>>  
> >>> +  qcom,hs-disconnect:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    description:
> >>> +      This adjusts the voltage level for the threshold used to
> >>> +      detect a disconnect event at the host. Possible values are.
> >>
> >> ':', instead of full stop.
> >>
> >>> +      7 -> +21.56%
> >>> +      6 -> +17.43%
> >>> +      5 -> +13.32%
> >>> +      4 -> +9.73%
> >>> +      3 -> +6.3
> >>> +      2 -> +3.17%
> >>> +      1 -> 0, Design default%
> >>
> >> Use "default:" instead. Here and in other places.
> >>
> >>> +      0 -> -2.72%
> >>
> >> In current form this should be an enum... but actually current form is
> >> wrong. You should not store register values in DT. What if next version
> >> of hardware has a different meaning of these values?
> >>
> >> Instead, you should store here meaningful values, not register values.
> >>
> > 
> > Thanks for the feedback.
> > 
> > The values in % really makes the tuning easy. People look at the eye diagram
> > and decided whether to increase/decrease the margin. The absolute values
> > may not be that useful. All we need is an "adjustment" here. The databook
> > it self does not give any absolute values.
> > 
> > I agree to the "enum" suggestion which we have been following for the
> > qusb2 driver already. 
> > 
> > The values have not changed in the last 5 years for this hardware block, so
> > defining enums for the % values would be really helpful. 
> 
> I did not say you cannot store here percentages. Quite opposite - store
> here the percentages. Just do not store register value. No. Please read
> my comment again - meaningful values are needed.
> 

IIUC, you are asking us to come up with a meaningful values to encode the
percentage values. However, all the % increments are not linear, so we can't
come up with {min, max} scheme. Lets take an example of hostdisconnect
threshold.

As per the data book,

+      7 -> +21.56%
+      6 -> +17.43%
+      5 -> +13.32%
+      4 -> +9.73%
+      3 -> +6.3
+      2 -> +3.17%
+      1 -> 0, Design default%
+      0 -> -2.72%

so how do we give meaningful values here? Does the below scheme make sense
to you?

#define QCOM_SNPS_FEMTO_HS_DISCONNECT_NEG_2P72	(-272)
#define QCOM_SNPS_FEMTO_HS_DISCONNECT_DEFAULT	0
#define QCOM_SNPS_FEMTO_HS_DISCONNECT_3P17	317
#define QCOM_SNPS_FEMTO_HS_DISCONNECT_6P3	63
..
..

In the driver, we have a mapping (which can be per SoC if required in future)
that takes these values and convert to the correct values for a given
register.

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
