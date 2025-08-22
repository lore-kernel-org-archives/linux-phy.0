Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C1EBCA0FE8
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkyQ6g17AIrr5+CcZpYdzJZUNDROZHfTVTru/R28his=; b=ZWmJijiHW7bGJT
	R0zzcRMM2P3F49t68+TxA50ooMW/wkaW2RLOAg/snGkZp7EC4vkECqUCq0l+5RJPsiHz5jBdo5BfV
	tiS5MdYnsoWo2oldWU9BmDXSl3T3isFFpBIaU12JBEQtj6soT/gJeHqI7aJntHSTi2n/tOvap4XwS
	JGBoA0IQTPpgZd2+rVq3ApRjI+d2p+FcI1cARYire+VeKRaim1iHOhLkfCro8AbqghFU6uf9438Hc
	SyU1GkMjULb52IWRcASZMEjPsw6ep3tj7ukSUVDV39Ra2RxjCdOIkUldy4NQpwukZVL86a6Cqe3VL
	anTSPrFkoJPdLdi5EenQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphji-00000003w1y-30w7;
	Sat, 23 Aug 2025 06:28:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQ8T-00000002MAc-1u05
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:40:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UWMT001237
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R3VBpF5unS5o4qUNQOe4EEFU
	h9fh4aEIJOsFeee/U5g=; b=Ut4ZmXNNyrfpyfc5sOajrSXqKleaNdKErZTKNrYa
	hhfX4lFu8Pwk39eh2dml0oUoi5eAY9Wa/aqCJ38bUR4Yc/h44ah+Kiv1+KYjhUVw
	Hu4u6BNMBJnOVcqR7HNWRVed7m7TLTkCxwzU8M+IndULAsTPZnujyh58u9fqRQUb
	7EweY/wk6S90VWr8dREaM6dmdu9DWMtyNf8a6EVQvneiP8JoKdBkBNas6NUZ1Msn
	gI6ymC9IHUfGYl1g92YOK6DDzozIcWAS0bdQRWgEgsjRSDdqc8uhAnQ5fgTqRFgb
	XaKJmhM3fmwpbCgEjkWPKN1CsZLYAZGH9l8olNoG8Gqpbg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52992qs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:40:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d9a65c386so11339806d6.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862842; x=1756467642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R3VBpF5unS5o4qUNQOe4EEFUh9fh4aEIJOsFeee/U5g=;
        b=alI214WEzQnqeG3jl+UyQkm2GccrOgBBsm0nEY9VeIu+Ce4bMI09IcRIiL1OnHs1Eq
         Yf/3k5MyI38/96ReJngRxlVso8uzQLT4+/RVR5tnKAwjWVpMaNp+dmtNTrvfyIfbwCwT
         aGVRFv03g0FllCni1L6nQ7iciWMQAwhncT8LBdC7nF93FhK6UqqAfTEs+Bsj6Z5VNs4Q
         JIJqSWcPIg4mjSqqgXfI1KkjAqyJgxoZWqf9EpCjWjAIIwy7esfub0EHQGhnVwdzKwGy
         2SUks10BEkJA155B0GY8RshjuGuIBo3BotciHvZVqKsLg9ZHu/SDI+y0iXWOWJZcUt6l
         nF0g==
X-Forwarded-Encrypted: i=1; AJvYcCXXLvzTR+yD/oyciojlW2ZDcQHy8IVZrU1qpJG2qmfWDCbi0CIPBIU0xCs0txYFhp7CPr89zgZtCSI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx59GXS/ffj679YIWmr2/YlJ5Jtn2hFUYfHZiPaMuMX6gdaW+/T
	vxsTtlPuL1XJ9eseJ6I0UHRchiRvAR0udM0z7FEWIF7f9AlB2mdTM/svnFpg1GwxXVLVJsGtLlk
	kt/VRhRMazJBm0So3boS6nPS3BdIr0kulYZ562sqBSMgxpAVIs9IruQ2Ajt6lPqP9dPi/
X-Gm-Gg: ASbGncumuZJ/9j6ZDaRYgTGGyqYP1NM/Flij/2rV+V+7MornA6OkER3j178KTSJlcDt
	S5uL3FnVeDUKwLQI8iozfeLznr0A5a9DlCjKbAYIX/JgrY8apK8T7/LClyi6fWh8GIN207NryB3
	wOQkNOnzPox59Cn57un/IzmSnTdwQPeRsJZaDvI5OOyOqjGi9a06RaiLURyRiHhWlTMWV8QFX3O
	GSvYKIuIsaJUtbDWlCEPDJIMExmBnrsSR8gOGH4egqg+TYBmAKOaui+T2FqjyQLLcAoByXYiyYx
	TnNCfnkvFyvMo8Q51AF1ejCIcLKqRx2BAcngp3oPnsJWCU0oKz0TBKDS0K+O+94QbBbV65t5TSB
	cN9JsFna4riyLQm5AgeXMYdmSRM6/P3f3SkgpKcBicNOUAEC3GFep
X-Received: by 2002:a05:6214:d6d:b0:70d:8d5d:59a1 with SMTP id 6a1803df08f44-70d97205d99mr36224916d6.45.1755862841831;
        Fri, 22 Aug 2025 04:40:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqTyhMMs7n5KY1lW09izaZu/eTxO2Ydf4e+xDEopme0nS+sjhxdykVOhMlGGOSceWoiv2AyA==
X-Received: by 2002:a05:6214:d6d:b0:70d:8d5d:59a1 with SMTP id 6a1803df08f44-70d97205d99mr36224116d6.45.1755862841093;
        Fri, 22 Aug 2025 04:40:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f3153cddasm255874e87.125.2025.08.22.04.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:40:40 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:40:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <k6n4ojdhsr2sjxoyrvo7qdoajdxbrjuuxfuhw76wrmpegdyayo@arumyjto7kpp>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
 <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
X-Proofpoint-GUID: TCkeSnwvG0y0uu_r4OmWeOqVCllEvjjK
X-Proofpoint-ORIG-GUID: TCkeSnwvG0y0uu_r4OmWeOqVCllEvjjK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX1b6pCufsaK4T
 f86TFvJwYeLznwc0ql1/CMv1AwWRfU17VMa1QeRo+CxVaBCA59XjUWdgp4I19TnG1DUzkw6svBv
 jOYjLYP71cG71ZwkI2dG8Wuo0G5jrfX+JG86yxI4HUfHL6opVzKr0L0Voyq1yUwP9ZRYspP2Kh9
 LwGYxpKGB0/CyxNr1u5Ek9X24VWwvimaW50RrDPpdCdJhLpk6CkPSPoWv6gD725cXu8ffYeXEPW
 1iF/pvaD+2mYPalUkQPBW5ejCbtH4tbY2XNbqi4J1V2M8Fg/frcKBGm6ssDwBYh/WpajX4AwSKK
 hx3sm8M4ulEbkYZy2JFqNhGYrswBDjhz8l/BGrKGs9d6k1VPSlzJov3rlrCfHzNvZfIG8c2Fmwe
 tWzdh9uzE3TUHSX6Nq9gPnTf3+94ug==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a8573d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=0Y_XMaiD5XwD0HHrWAcA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_044045_496117_904F4A01 
X-CRM114-Status: GOOD (  26.78  )
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

On Fri, Aug 22, 2025 at 01:02:56PM +0200, Neil Armstrong wrote:
> On 22/08/2025 13:01, Dmitry Baryshkov wrote:
> > On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > > connected to the third QMP Combo PHY 4 lanes.
> > > 
> > > Add all the data routing, disable mode switching and specify the
> > > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > > the underlying DP phy.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> > >   1 file changed, 44 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > @@ -62,6 +62,20 @@ switch-lid {
> > >   		};
> > >   	};
> > > +
> > > +	hdmi-connector {
> > > +		compatible = "hdmi-connector";
> > > +		type = "a";
> > > +		pinctrl-0 = <&hdmi_hpd_default>;
> > > +		pinctrl-names = "default";
> > 
> > If this is a DP HPD signal, it should be a part of the DP device.
> > 
> > > +
> > > +		port {
> > > +			hdmi_con: endpoint {
> > > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > 
> > Please describe the transparent bridge too. It can be covered by the
> > simple-bridge.yaml / simple-bridge.c
> 
> Ack, indeed it could take the pinctrl thing.

Pinctrl, enables, etc.

But from my POV the HPD pin should be a part of the DP controller
itself.

> 
> Neil
> 
> > 
> > 
> > > +			};
> > > +		};
> > > +	};
> > > +
> > >   	pmic-glink {
> > >   		compatible = "qcom,x1e80100-pmic-glink",
> > >   			     "qcom,sm8550-pmic-glink",
> > > @@ -1007,6 +1021,14 @@ &mdss_dp1_out {
> > >   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> > >   };
> > > +&mdss_dp2 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&mdss_dp2_out {
> > > +	data-lanes = <0 1 2 3>;
> > > +};
> > > +
> > >   &mdss_dp3 {
> > >   	/delete-property/ #sound-dai-cells;
> > > @@ -1263,6 +1285,12 @@ &tlmm {
> > >   			       <72 2>, /* Secure EC I2C connection (?) */
> > >   			       <238 1>; /* UFS Reset */
> > > +	hdmi_hpd_default: hdmi-hpd-default-state {
> > > +		pins = "gpio126";
> > > +		function = "usb2_dp";
> > > +		bias-disable;
> > > +	};
> > > +
> > >   	eusb3_reset_n: eusb3-reset-n-state {
> > >   		pins = "gpio6";
> > >   		function = "gpio";
> > > @@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
> > >   	remote-endpoint = <&retimer_ss0_ss_in>;
> > >   };
> > > +&usb_1_ss2_qmpphy {
> > > +	vdda-phy-supply = <&vreg_l2j_1p2>;
> > > +	vdda-pll-supply = <&vreg_l2d_0p9>;
> > > +
> > > +	qcom,combo-initial-mode = "dp";
> > > +
> > > +	/delete-property/ mode-switch;
> > > +	/delete-property/ orientation-switch;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_1_ss2_qmpphy_out {
> > > +	remote-endpoint = <&hdmi_con>;
> > > +};
> > > +
> > >   &usb_1_ss1_hsphy {
> > >   	vdd-supply = <&vreg_l3j_0p8>;
> > >   	vdda12-supply = <&vreg_l2j_1p2>;
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
