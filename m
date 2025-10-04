Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC7E9CAC5BB
	for <linux-phy@archiver.kernel.org>; Sat,  4 Oct 2025 06:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFolf2etjyoI6DGd7Z7uIRNrJ/caAJZkkfffwDGwZow=; b=yBoTuctcLsgHEm
	KgVlOh0ttpiMqxboQzv3m2Dbi4uIP6zJAsBTrp99fiFOxWBVghRE1r4OXT0kUpQwBgGL8kJtHyzpr
	nMyxri0dMGiI0uH8Ba97M60a/oLQgVuzq1gDnrlbXeX/9F0WLBQtBnFMh5IxWhPmrMKjCoNyJhENx
	6ktkymio1RIS5y7D7v7DSVdsfc7JpEHcboaAWVwkgbI05YGuevZm5bDVE3vGdrL4agKRfRc5vtmiX
	WATZtDx+zbcJB9iebQNr+0nLq47IqwKf6ThK8GIBzBt7Rgou41Ty3ghSzGmki9OIwSSVQSrB9bApZ
	bo7tQ7xoNxyrnOwb1e2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4w2V-0000000DVri-0s15;
	Sat, 04 Oct 2025 06:46:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4w2S-0000000DVrL-3Rwh
	for linux-phy@lists.infradead.org;
	Sat, 04 Oct 2025 06:46:42 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5940Jktf023385
	for <linux-phy@lists.infradead.org>; Sat, 4 Oct 2025 06:46:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SxgQPHjjkx8c1JmVgGvAmy4X
	988IpWVIdlbWqL8CFH0=; b=jRDARAtjbq1gFjlUyxD12R0QuUfkOgrk6+KqdLVf
	+fWmZWHod+zsco+B/5ABnyRJ/ITSHHBm7Zk7yrJiD81xjkkNd8ls5vT5DOQcxdWc
	uu0f+iDA94oeWUjj+2fRV+ht4luJSUjrN/7n9zM8vlDeYr3G9S2H1BcnWHtx9XC+
	l5sOEEoKO8c4CeCjPblMezVV1CPAsX1MaDv6GDIfP6I8JjdUSeKlXK8LYM/qeuIn
	73HJ/VlSyT3sPX5kbmSuR5ALzJ+YVwI+xcicBd/AwHts8p7Voo3oZEJCzD64PjYr
	tGTdnEef4yFfu9YJObPWZSuurQUdXZb1ZkDDVxMvBX//pw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn0gmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 04 Oct 2025 06:46:39 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d91b91b6f8so37637931cf.3
        for <linux-phy@lists.infradead.org>; Fri, 03 Oct 2025 23:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759560398; x=1760165198;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxgQPHjjkx8c1JmVgGvAmy4X988IpWVIdlbWqL8CFH0=;
        b=r+DV0TZjJj3nz4GHaRFhWtNVnPceidSLxjwTIvc0ajRy9NNyt57/fIe3eWR/AhxuPE
         EwZWp2ITe5En7uGCZW0DYmjIavC4XSri8Mp0Vb2fYomREdvk74s99HqNYysijKT9Lljo
         sDthjOpJt6QWJf/Upar6BuGH6euiASYwhkD4oXRTwBet6jM+yIY93gPYS8ciBBfgYLd7
         DAKL/nRlwJDdZ5YvM9uDXePiNL5/R/GCU/MQGB+6mGaIjvoW8UihjcH1zFEiCG5dAgjC
         akOTENKcAcw0KshJ25N5o+H971KyoXWhNzmnSYou/fA5Dp77b1yUxOul6pU6zpn6Fo2U
         LLXw==
X-Forwarded-Encrypted: i=1; AJvYcCVUMbd8X0SPNWNEgGQhJtHr0DHxcX+jKgvDW0gOotNYoDZOlhtBbhqSG2wbrqoJgeOwWsTcCNjH4Yc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzqypHjP11+kuy0sEVAwQyjA1PE7Z1O6MNZ5pvcmF37wivfMNa
	VKM1Qa3DS9MT1+AEJfGQah+fhZs6z+DDohuWlWydQoEGhCA7MBq8HiRrx5FCAnAPI/6Tv8mAORe
	GGvl4iSI2TsBa9kIJOn6ceHqWNOV0DflrpvmBQhKq7/LTEVaqN0ehNeC/ub0PsViC3zFc
X-Gm-Gg: ASbGncskSoRHG3VFdhavjaDUC2+MdP64vm6evs1gTa4TeuzyRZCQ9OPMqKTr+JBCQKw
	i5GpP+EJHllkT4Zfi18S0A8+/8cblGWgbmi8NOdbC22QCwVtGLtPhyhM3wkjt6G3sygejW6yTNp
	JR/WiQASyMdSrfQdsDCHTrnDCGw1epLtLqlbocG+pi/pn0E6QOiZxFm3g0jrnQVKWj83Zv/SvRr
	00q4CNeaBcDTOtmDJvR/sZ81u9IGEHwvYXRk3VQZVtZAtCLMjNbYwVAiCBrUDRKd028ESqyzHX1
	mMS8GdpHdZ7Xtt0St0rTofidc8Q/DrQTxuXs25wsff+dBOohNsjbP+eM3r+jfbRhWs+D2Yahyxe
	QU0eKgSgahEv/1a8hMIGOx2f1cKLF45m2ytAFNebkBZNcbKaJiUu51ci/1w==
X-Received: by 2002:a05:622a:1445:b0:4d0:7158:b18f with SMTP id d75a77b69052e-4e576b1372dmr72499371cf.63.1759560398175;
        Fri, 03 Oct 2025 23:46:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQvslGGL2S9yvJwcUTY/EvgxyUZIovyV0WIRAR6wT5X3G5XXzp9YE1BKwE2cINLOH+uPi89w==
X-Received: by 2002:a05:622a:1445:b0:4d0:7158:b18f with SMTP id d75a77b69052e-4e576b1372dmr72499151cf.63.1759560397681;
        Fri, 03 Oct 2025 23:46:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01134eeasm2555271e87.34.2025.10.03.23.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 23:46:36 -0700 (PDT)
Date: Sat, 4 Oct 2025 09:46:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <3i3euwqqvtqgyqgxbylbrj3dk2cyyavinb5v7ocevi4x6o25y5@66fodqy736kq>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
 <9d020a8e-22d8-4f1f-803c-d00bb912f699@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d020a8e-22d8-4f1f-803c-d00bb912f699@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX+2E3JmI2zWXC
 Qci7UcMEZpuzqLOvEPQqsnObnpNFGqiMJr//dIRnPftTQyn/q/CTA9cdBYCfSM2LV7qnbpKrdbs
 3/+lOPWeGZFNB5hBwEwtBe4g6KghY2pmJV86ly44z5J9BuV5hoY71sA2CORvumMATsyRq/z/Mwg
 FpjLi6Ycqf8u4LG9ztUCiDeMh8HAB82GqzWWY3HLZMEnhp0hzBt+FtYcH8+3qj/8YNwW5pHmQ2T
 kGwyaZbEvFeUtqoVYLBjG2p7YmbFcyIRUhdOestAxrQf+wri4hV/7YhvmMv9LA1xWlyc/7ymZx5
 3THjzqxYp5jEvVQ7jFaDmLDbyT0Fp88bQEaKK3Cutgls262CXMD0TK/LG4ol4j8IGWKv8xXoeN6
 HbjfmigQ8oZ6x8HSi1HzVQQepMbBHg==
X-Proofpoint-GUID: FnARaDppWTiUbDXM0DJbWEO2VlC5eT8k
X-Proofpoint-ORIG-GUID: FnARaDppWTiUbDXM0DJbWEO2VlC5eT8k
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e0c2cf cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=P-s5V6jcMkwkI3aNiSkA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_234640_976401_A190468C 
X-CRM114-Status: GOOD (  29.44  )
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

On Wed, Oct 01, 2025 at 09:06:10AM +0200, Neil Armstrong wrote:
> On 9/30/25 20:56, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 09:39:48AM +0200, Neil Armstrong wrote:
> > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > 
> > > The routing of the lanes can be:
> > > - 2 DP + 2 USB3
> > > - 4 DP
> > > - 2 USB3
> > > 
> > > Get the lanes mapping from DT and stop registering the USB-C
> > > muxes in favor of a static mode and orientation detemined
> > > by the lanes mapping.
> > > 
> > > This allows supporting boards with direct connection of USB3 and
> > > DisplayPort lanes to the QMP Combo PHY lanes, not using the
> > > USB-C Altmode feature.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
> > >   1 file changed, 137 insertions(+), 8 deletions(-)
> > > 
> > > @@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
> > >   	if (ret)
> > >   		goto err_node_put;
> > > -	ret = qmp_combo_typec_register(qmp);
> > > -	if (ret)
> > > -		goto err_node_put;
> > > +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> > > +
> > > +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> > > +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> > > +		ret = qmp_combo_typec_register(qmp);
> > > +		if (ret)
> > > +			goto err_node_put;
> > > +	} else {
> > > +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
> > > +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
> > > +
> > > +		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
> > > +		if (ret)
> > > +			goto err_node_put;
> > > +
> > > +		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
> > > +		if (ret)
> > > +			goto err_node_put;
> > > +
> > > +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
> > > +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
> > > +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
> > > +			qmp->orientation = usb3_orientation;
> > > +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
> > > +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
> > > +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
> > > +			qmp->orientation = dp_orientation;
> > > +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
> > > +			 dp_orientation == usb3_orientation) {
> > > +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> > > +			qmp->orientation = dp_orientation;
> > > +		} else {
> > > +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
> > > +		}
> > > +	}
> > >   	ret = drm_aux_bridge_register(dev);
> > >   	if (ret)
> > > @@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
> > >   	if (ret)
> > >   		goto err_node_put;
> > > -	/*
> > > -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
> > > -	 * check both sub-blocks' init tables for blunders at probe time.
> > > -	 */
> > > -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> > 
> > SHouldn't this still be a default in the 'normal' USB-C case?
> 
> It is, I just moved it before the added logic, but the comment doesn't really
> apply anymore

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
