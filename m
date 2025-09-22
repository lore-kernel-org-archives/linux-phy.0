Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F2F6CAC5AD
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 09:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZclK79mTR0j2k7h9g2v/SWtG7LGLqz6v8AYlLWANTHg=; b=kYNIEx8K+W7xfn
	ZCpZi75aDvNzsqlt8hPfTpxpS1BX2BFsKluK4EmwJDiunkN0f1JHOURwHzOy5NGsgtzHpcWJE4dtb
	JQg+fJ9OvdkSvOmak5U8BYxA4pH2QM1vs+CBT4jqnyCqjqpLrns4GAcCwlDV7jjnpkfUrm5nHGnjj
	Bmd20zrgOi94teEa/xNxrOZpRddsM+z+R8/cqhqqmcpsKZBh8nvZmy2qFb/ef+9Xa3HmPWjbyCqQO
	4sGQGPy6ysULmXsnJRAGIvJ4ddzf4yV3V9B0CKcf/pDCorEmcjNALbEvimAIdo8dIsHoaujCxMMO7
	gzE4pbPYV9/Uk0tdNj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d2E-00000009umh-3MIf;
	Mon, 22 Sep 2025 09:40:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0d2B-00000009ulz-42gx
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 09:40:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M975Mm002772
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hj4Upp6DvQZMXvyU0WYeHHC7
	m3sQ62ahNFhZ9X5v5Eo=; b=RLQ6+NuCiPUV/W2JulyLLZL6rEnT51TRuFjybdHd
	tkFtkdlQJASvNLju4ImrI+Y1E+Zk45K7z6vcnBJWtoS+MtjDj80cqbJ4qubWfuUf
	FBsbjyzvU/nGHL+zuxQjslKcwLO+ohd4L9CWfFBOT6JfD5hw4kP9CH8S0fLEUue1
	hO4xFWEUOhNm7ov69+ut/ZOZS9BIAyX3ovHXOagvcikYF7Jbnbcmq49pf52DKaHi
	Kb5O7uDHt5aUBAB5QjrMv49+B9uHO2hLZoyvrtkSTAB2lu7DYYfS7PV/upznyikY
	b8Tk5sDL5qrrVPe79ijAYvccl0gEUYkqAvhX46zXuahbvw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98c9jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 09:40:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4cfa9501871so5541811cf.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 02:40:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534034; x=1759138834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj4Upp6DvQZMXvyU0WYeHHC7m3sQ62ahNFhZ9X5v5Eo=;
        b=wXU6oki3tERrh1NoQOQ7XkqY0hocDh/SH7756CNmTJc2QlpMMwxANLfJyRtAOv8mi2
         n3h8LDLBad+8ilyLSyEpDCYSBTWchAaS3/LrBq7z95Uico1/krxmReNsb3U1VBhYVPu6
         XnrYXB9LKbPKcB/7YdMLBFNVwGUgZcOe92Iut8IZm04eaacVTq36Fh7ioe/9xTKybqFY
         Why+Y4xHMJqDvZ/tQ/ZJaVVskfS9no6QAUVUHMy+yUnxVr4xSnsnVjMtwGVmwdfWXKZ9
         WrfuAk5M1CBKUnmuDau3rCLlYxcxd6f58JiVuiyWaZdZvVrjvqlYvqMluC5ioUmyakfH
         GvIg==
X-Forwarded-Encrypted: i=1; AJvYcCVJf8TYe25/48EkzOc4UuVt04uGNjBgSePeUukbC+SdNN8+y0NrV2UYl8WDyPAgWbA0X8/+6z/jBic=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxon2zds6yq2ujYEwCGw3Coee107IwiyF/2lSFHTAS7cXRVvoP
	SmxqxCp1bu+G0Qi+Eb0kqPlkchCZ/IlNvWDEy3DmgOonmFbqooArHFcCRup/9NgeyeUq+G/exLd
	i6+wUguk92CGZVoAgB2uxVoessNljV/qb0tlloBCAbqp2BOeXtGYRlxkCVsPN58hAFnAN
X-Gm-Gg: ASbGncsOMQr4f1X/pTw/Cgv4yDsavpcoF7K9e8y1NvZiDST8sSZ8GBaVBZEX6mGxQsu
	YOiIjP3CM4ZapRN0zg7yqc0C2qo8NzQwgpFluZMbw3stUqPIYATeVFcg8KcLfw4DdGMEUbIHFlZ
	YDlZrhnhBwD2SSqI9gIwYshpUWiNmMCGKm04iEJWhkQiRoXvwpd5MKH1t2DqhIi1Y6atzYEdaNY
	SXDB1vJy3q2a2HqIpZYsImgKWqayN6y6EnESWxJOYwyLuceijXBG/RPXLXSwvPKA94RWujd98gj
	pqS9RAWItvOUuEZjsjLkYkpYEShXYJk0crB2F4lqlFo/d4A6LP7tDAfNJsB1ljUo9wzVOFxoSe+
	SD6umO4cA0EDuy8il2jDSYkaEOPhl6FKnfx0ArMY7Db+u1B6LEd5/
X-Received: by 2002:ac8:5a0c:0:b0:4cd:ff33:1ce7 with SMTP id d75a77b69052e-4cdff51a4eemr13103141cf.3.1758534033773;
        Mon, 22 Sep 2025 02:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELhFuWdjsYSdj9FPHM6ic0X6+DJCEC6Pmfu51Xrw6oDaWX8H/IWt6E6CzyE1gUwe2UoHrcGg==
X-Received: by 2002:ac8:5a0c:0:b0:4cd:ff33:1ce7 with SMTP id d75a77b69052e-4cdff51a4eemr13102901cf.3.1758534033229;
        Mon, 22 Sep 2025 02:40:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b9545a8f0sm1561000e87.83.2025.09.22.02.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:40:32 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:40:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 06/14] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <we6q6eg6ho4hvf2b6ibhakoxl2gdph6siokkgvzrnpp2iampl4@xomenqunmssw>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
 <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
 <d09b2b45-3ca9-4808-8ff1-72b98d6fed2e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d09b2b45-3ca9-4808-8ff1-72b98d6fed2e@oss.qualcomm.com>
X-Proofpoint-GUID: 7dCmj_u6gLtupPg2DEJr8RXEYkZiJE1a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX5CLJX9ubQQVO
 Q3mmrzNjfqe1O2cZGGnyk5Z5pw/4UlWOOI2KCzdBpGzIvQ4tBT8HeMEp2V1qS0q0vAajWpD+XAQ
 EfaAYWISSeOMnUl0omcHffUa8En/zVH51F5imoqnhlujImpCRJtW+atC7AO6R0Wk7F9CVlCCcHr
 QfsWVLAQOUAlnxPeFGP+34ENSvVAkzqgiQqhUPN1kdTT3TOhvIGYrhahTKlLiMfBdAxE0m6Vkxq
 DRdYZqO/bHdaFgEnZkW7mcjXRwbBfktcqtBppjZw0MB4IZdq/u4XwOQF7aSfy1pQfh5rv+glbGJ
 e80697GO+D/RSH1p8oTZP3lAFjsVXY9+xX+MRvhR4/69zYFj1scsd781VWEr05N2ywlOBV1CRRC
 YBOFzdWp
X-Proofpoint-ORIG-GUID: 7dCmj_u6gLtupPg2DEJr8RXEYkZiJE1a
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d11993 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=o0wnlFsxEizOfUfN_0IA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_024036_127682_AFB721F7 
X-CRM114-Status: GOOD (  18.31  )
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

On Mon, Sep 22, 2025 at 04:26:43PM +0800, Xiangxu Yin wrote:
> 
> On 9/20/2025 12:46 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 10:24:23PM +0800, Xiangxu Yin wrote:
> >> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> >> Extend qmp_usbc_register_clocks and clock provider logic to support both
> >> USB and DP instances.
> > Why?
> 
> 
> Shall I update commit msg as below?
> 
> "phy: qcom: qmp-usbc: add DP link and vco_div clocks for DP PHY
> 
> USB3DP PHY requires link and vco_div clocks when operating in DP mode.
> Extend qmp_usbc_register_clocks and the clock provider logic to register
> these clocks along with the existing pipe clock, to support both USB and
> DP configurations."

Yes, please.

> 
> 
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
> >>  1 file changed, 204 insertions(+), 6 deletions(-)
> >>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
