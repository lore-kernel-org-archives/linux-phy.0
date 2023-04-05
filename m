Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C86C7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 08:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQYCXzfwlB0n/FvGJFbzL7T++gfR7mbY2jhq8heRiZk=; b=Hb3MT6t+DKbeRZ
	pYBEQQJELv/j+INUNOh24cKBFwjZ/kkiQFtPLh0bORzq6Dd/OxQ3VNl5YQQGWAPZ1wLqfYjuI51GP
	WLO64Ye4y8svwgEWiOLz5WpFaO0yjhpXCCh66cQyPirtSAKBAbOzjB6QhuXcgoguF44bqSkq6VO/K
	PQT/7klwA9Ej3paAZpIWG5KIIXgXOeEOjwYyXZE8US/5zEJQrAsD4XJ49i5l+ignTFmqFh6UvyTai
	GaEFn3zRamLa6L1lg8ZrkDn9cHd3WRj9oO+lO3CCOnpTBKGI9wbm8f243y7MFPTATLPWzbDgUhqZk
	RrO3Z6mVy4uFK9ja/APw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjyyg-003sVj-35;
	Wed, 05 Apr 2023 08:58:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjyye-003sVG-2T
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 08:58:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3350fO77006850;
	Wed, 5 Apr 2023 08:58:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=tfeCTwscVhChaxXdNWUUPdUPQorf+0lrNukgnolz91Y=;
 b=P80Xj+zDsJNQPFukVg3BIvbZz7vDRimJRvMH5lOS1Ui6qffh8ejureGj9Ne3+mwi8oDD
 hf6D91CtbX6uiAOrNT3R/+hkvrCqBms/2509LVniYdupgm/d8bDNZ17ZOjdu3k9zFUph
 McXILQmfa+eEDrpT2GeJrQh3znM059kbmTvyTLvkAFBS1PWVXCnobuxVco7e7NqDIFLa
 buwqaNrWW+Zzw83xr+y9GKGEJRcL6Aw6zRWcu+XQb9oZ3Xb3d/yS1XR4n2f9FJguQEN4
 hK01I8OYx0itgxas/w89DguVtuUxWEuhqiE3TDgdFB+nK+H2UxJtC+v72rTKiNOXv2Qj 6A== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prppuj2yd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 08:58:43 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3358whes006874
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 08:58:43 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 5 Apr 2023 01:58:36 -0700
Date: Wed, 5 Apr 2023 14:28:32 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v5 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230405085831.GA26156@varda-linux.qualcomm.com>
References: <cover.1680162377.git.quic_varada@quicinc.com>
 <c46b542b112b59002ab965be1d3fcae8c372d545.1680162377.git.quic_varada@quicinc.com>
 <CAA8EJpo_ckJtYV4aU613X5L6+wj-1i9vZkud5p72PLdCSnj5ng@mail.gmail.com>
 <20230331092710.GB19162@varda-linux.qualcomm.com>
 <ZCaznloORtzgioOP@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCaznloORtzgioOP@hovoldconsulting.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: M1LODQcyTa-eleXSBAkeNfjSdwR-KcDR
X-Proofpoint-ORIG-GUID: M1LODQcyTa-eleXSBAkeNfjSdwR-KcDR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_05,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 clxscore=1011 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=941 phishscore=0 bulkscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_015848_813073_FDCA2237 
X-CRM114-Status: GOOD (  25.31  )
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

On Fri, Mar 31, 2023 at 12:19:10PM +0200, Johan Hovold wrote:
> On Fri, Mar 31, 2023 at 02:57:11PM +0530, Varadarajan Narayanan wrote:
> > On Thu, Mar 30, 2023 at 12:44:40PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, 30 Mar 2023 at 11:42, Varadarajan Narayanan
> > > <quic_varada@quicinc.com> wrote:
> > > >
> > > > Add USB phy and controller related nodes
> > > >
> > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > ---
> > > >  Changes in v5:
> > > >         - Fix additional comments
> > > >         - Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > >         - 'make dtbs_check' giving the following messages since
> > > >           ipq9574 doesn't have power domains. Hope this is ok
> > > >
> > > >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
> > > >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
> > > >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > >
> > > No, I think it is not.
> >
> > There are no GDSCs in IPQ9574. Can you suggest how to proceed.
>
> You need to update the binding and either make the power domains
> property optional in the binding or dependent on the SoC.
>
> > > > +               ssphy_0: phy@7d000 {
> > >
> > > Nit: usually the label usb_0_qmpphy
> > >
> > > > +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> > > > +                       reg = <0x0007d000 0xa00>;
> > > > +                       #phy-cells = <0>;
> > > > +
> > > > +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> > > > +                                <&xo_board_clk>,
> > > > +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > > +                                <&gcc GCC_USB0_PIPE_CLK>;
> > > > +                       clock-names = "aux",
> > > > +                                     "ref",
> > > > +                                     "com_aux",
>
> This is not the right name for this clock so you need to update the
> binding first.
>
> Please be more careful.

Thanks for your feedback. Have posted v6 with the above corrections.

-Varada
>
> > > > +                                     "pipe";
> > > > +
> > > > +                       resets = <&gcc GCC_USB0_PHY_BCR>,
> > > > +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > > > +                       reset-names = "phy",
> > > > +                                     "phy_phy";
> > > > +
> > > > +                       vdda-pll-supply = <&reg_usb_1p8>;
> > > > +                       vdda-phy-supply = <&reg_usb_0p925>;
> > > > +
> > > > +                       status = "disabled";
> > > > +
> > > > +                       #clock-cells = <0>;
> > > > +                       clock-output-names = "usb0_pipe_clk";
> > > > +               };
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
