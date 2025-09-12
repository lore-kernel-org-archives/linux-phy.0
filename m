Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661DCCAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0q9XldWCLcOOQkyqoD1QVEpALNwwaPgD/QiNnt9GSU=; b=DFpHs3Yjf4eZzd
	bIkY0kxP8je7pBMzgGixYahmm4lB9KR80wL6OQFBP9CVeKPLsjIsDLhAYRCZw5GRPnSIiqO4iqpY2
	+EoxZyWme5iBluTUWDzCwYISMjCSG9548YWGMwYMiZviVliiox9hYi12mRz653FRGRjiBVvyvk+Ne
	YgiZ7r4sOgCE8Vp+MoQFRj0YdTRowFjpiOvwXHifN6JWko5od/1Ur94N1Y1/qJ730xHzGN3++ocBz
	NHnRxUhDy+eHfKwBzJEGnw9IW/JJ4e5CilNEcTdk9PspTVRZWnlWgAwHSemXkwOwoLDlOR8MnL2dn
	HC8a5LOisX3zb3ID4jgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2ak-000000097i2-0lZq;
	Fri, 12 Sep 2025 12:09:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2ag-000000097dR-3Mqt
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:09:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDtr015055
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AWecxXQ1HoSKQokJLzYb6tbb
	rzkT4uWaDcoy5VKKVeg=; b=N4qudoHJb3LgJAVQziaNCtZl0F7NfM5kABN0udgc
	AwnPkhRGctPPhNtrEqLj1TzlUOG7nqOcWGSmqBVNjTg6DCl2lMUA2s0tfzfC0MZc
	Fxi2T88hQ9TmuN2Ii1EiknR4CbDaDKab5CbHdp4w/UTqpA+DLbERlyEL6wN4Q68/
	9mBcuHp2OYC0JTRzDzirqGh0PLA2h1x8mt2KCFlWij0Wi3AQPDBYO0lKID6iXfw+
	BCDg27FiO+Fc+Uej1F+ZvbLM7+d8T92gEbNwOmwMQZ7uN2y8hE1PqR4BgFYIG/jP
	qf9YitCAwwqbtQ4uQqbX3SL1vs7PQMsE2V1rqc6ePsawUg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapuuab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:09:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f112dafeso49045341cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:09:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678961; x=1758283761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWecxXQ1HoSKQokJLzYb6tbbrzkT4uWaDcoy5VKKVeg=;
        b=fqok4yJwNZ5L6A+jx57hTv2MXcWtWVZoKAae9TBnFL8avn968lNwPMuG4ADP3P6tvg
         NC/d3fqyyLPI8BuaWT81u0wH+9NBw7Ize6N8KpyhKYUuQfeFp5VrzbMMmnVE74QcJXjN
         pMb+fuDyxinYTO6RNzuwFhDnnhIMs9ApEq3LrTE3WADWInxAFw72Nvb+ZOZq6RLJsQ7G
         THjIyVQnpZzldALVNEsA0Up0aQgILelxJu4BgeBuRBqzpebVY9zr5eGEHTiq4IPm9rAz
         41b28xskRsVBh38F8KSiV07eS30dTLaWNP6YF5kZgUaZIATEw1/+WXF8eWaeEXHfCMDF
         i5mw==
X-Forwarded-Encrypted: i=1; AJvYcCXposjK9gn6278URpJc+H8K9IC6nk2dJMixbh0iJylUAaiM7vMtmkT2G/Bcpl4g6kuzkfIu/hP0yXU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzvQf5+jplK/jbB5p6y59OWdo3qe6i70ATdadd5UvoPdqYmPPz
	ZoEsxUa7Slgr5x/t24W+loZ2V1Sec12/qBnpq21Wr9N0/D6S4eQT5tZIqeH0k36Bmz0TqLriCLO
	DXUG/uEnuzeqZ0tIiMMki/vaQRaEGvIoj3GZk4rpKYFUMoQ0x4sVCfot55/C8QeAlcNJl7OWsRi
	7C
X-Gm-Gg: ASbGnctzHD+Ue/CKOk9pjP2dCwmG5a08llMJgcyqXG5sKHBGeHVKyS0RyvtldnGSNeg
	ld3KkJBPI0j8viq7JshJfpCYfeBav5/esDPmZBjnNbKE4yrNMehHaWPVvcFFSv98i6eQiH1zklD
	ZVgq0mzKWHvnhZgxxCDUZqFcjyOSmv8G+YbJI+I2u/EpU1CeYoYYxbtpQBiXPmtEOhLj4CLE1l9
	Ik64ehB3GZtUyM0pCzNW1W0AfsmrY1FX5J/0Sm2v9p3pWhGoYdfWeQzSzLhruYUtq6O4lwjLidu
	WnAC3tDPn+iJeQwIMEd4u5o6eI+KzL+er1fFN7dP7vWYlXubDhhxq7XdtTemjInGRYBa0R35gV3
	+Vxp/e4bcFG9gQPnCI+GaXPxmrVphol0lby6Oqsp4DpIGDCf6/ZQs
X-Received: by 2002:a05:622a:2b45:b0:4b3:12f7:8baa with SMTP id d75a77b69052e-4b77d044455mr32331271cf.51.1757678960403;
        Fri, 12 Sep 2025 05:09:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBlHDLz23zA5O+/vEKCN91ortJnwiUYeDorqJurL/VJ4hd/jMETJMt2eSQJiBv4Cvs1e54jQ==
X-Received: by 2002:a05:622a:2b45:b0:4b3:12f7:8baa with SMTP id d75a77b69052e-4b77d044455mr32330571cf.51.1757678959880;
        Fri, 12 Sep 2025 05:09:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-35062c8da78sm5874761fa.0.2025.09.12.05.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:09:19 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:09:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
Message-ID: <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
 <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
 <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c40d71 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=h6lld2rfrDIzuLPEmGQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: WQ6wP9hMgu4fE-6kT0aUtY__HzUS-iHJ
X-Proofpoint-ORIG-GUID: WQ6wP9hMgu4fE-6kT0aUtY__HzUS-iHJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX2yJcZ4/SWmXS
 SXX/USnQa1NP/gWXhFyF4gGmGRSeVj21Gpjhs0XOi3E8e/DWxCz98VlePq3luGaTGf5pp2VWzZk
 PwPdEy+NMdIOU471lQKWSR0xV9xJNfTFq01gd50aopZgSL/NYmder+qm1hizZZ5A/HMQbP5Pbpg
 w8yhNs2RabCt0/fZmmG7tSGZN8UvmH5crvNt8Ke/NPhVgAr4XB4R0x54+t1VydEIqGkNhPMYyg8
 Eg3LNJ7IgqQuixybYGl1rR0dfd2GzCnVSWjbaAyxtw3+zSma0cFIROSMSuHoUnOQPYT7HaYtO/n
 CWWGc7q+/ahq44EFeu/RymdYkmFdTQKjbkYnccVt+xrdHgFtBNdaVPKqori59RCRh5eNYApevnM
 AfZw1OZB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050922_968161_899F069A 
X-CRM114-Status: GOOD (  22.66  )
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

On Fri, Sep 12, 2025 at 08:03:01PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
> >> Introduce mutual exclusion between USB and DP PHY modes to prevent
> >> simultaneous activation.
> > Describe the problem that you are trying to solve first.
> 
> 
> Ok.
> 
> 
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
> >>  1 file changed, 21 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
> >>  	return 0;
> >>  }
> >>  
> >> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> > mutex has a very well defined use case - a sleeping lock. Please find
> > some ofther name.
> 
> 
> Then how about 'qmp_check_exclude_phy'?


qmp_usbc_check_phy_status()?

> 
> 
> >> +{
> >> +	if ((is_dp && qmp->usb_init_count) ||
> >> +	    (!is_dp && qmp->dp_init_count)) {
> >> +		dev_err(qmp->dev,
> >> +			"PHY is configured for %s, can not enable %s\n",
> >> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
> >> +		return -EBUSY;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  static int qmp_usbc_usb_enable(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
