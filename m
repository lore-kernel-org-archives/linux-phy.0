Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E470C982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 06:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFeC9jGht0DGiIDiYeaW7AFjh4NFPP86JiFDDJDsPF0=; b=O7+Wb8XXyXrlMr
	TlaJ7XKzXb2mRmufdA70VoACwATgggGQBmx3/QzgznVgGIE2CRDzXVN3m4ttlyf+KxRvBitoSlMrr
	UL/3JS0lHR3NvrDssfCW4tu7oIMrAPY7ON8Y3qIUFLATYb6Z/5els1pBl9b8S8MPZ4DWrvVLkyhtA
	6wE3x3A2gcZ0BDhOhjCqQ3exLOP0ZHFQ2GC6o8LoG/UjN3YahFIGJGr8o20uZxAunMm3eKbehkuVn
	XxRoTvckd9suKMHlij2qRoThTHI+Hwx8/OH9WuUW8Er9O+oyX8GOVUOsLyN414QMHfgD0r+11dQgd
	n3s9bQvCOth+0SAccz2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xxd-000000018O5-3bi7;
	Mon, 21 Sep 2026 06:57:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xxc-000000018Mc-0GZe
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 06:57:09 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3YsrQ142166
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:57:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sxxN/THrSyRW5wXS4Y0iUrjV5rVX5I/Bsxrc5z1M8nw=; b=BGHpVfrUtTxhFFtp
	4B27Q2Ji+0WJwK/KVGNyE2Gzik2MkkhFo472YSf1+Ykrv7g1LqSbw9yhzRixDJL5
	NQXACOg54oXeU37fMrFlE0vhB5MVBdyeX9qxDZytw8cvKjgvP2T5D9L2vziWdBP9
	nyquOaTjq591p2UxjCdD3LOjW9RitYDhY3hy9lHi06VcBL3pbHt5lawtD7DB1oIN
	YybbmHWpnPEn1UYG7EteILBzC05Zf0ui4myHZnS5Smbqrb0mDNuNwUWVTZqwHZp2
	Q4MqaqoWhOJOLc7aDWGaQGIKuzlK+gkLzpbGHJCwkuiDejNomLRaGuDzKD8j5ZSc
	vIyyPQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtu1egxur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:57:06 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc51591102fso3967094a12.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 23:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789973826; x=1790578626; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sxxN/THrSyRW5wXS4Y0iUrjV5rVX5I/Bsxrc5z1M8nw=;
        b=Q7yoh8aCe22Ord0HkuLRidwDKHBLTB1l5c3DPIMfXd6CyyXsAp8SRpBhEKp8WMqRMn
         G4rYvfM4PWYBJQjnx2g+xo5NasF/HtSAaqL3Apc2a25QZeppft4Xm4auee3rrSt4FuHs
         hMSs1WolyRNv/BzpvlFWIMPDczis48mSGqv0c++qZo8cHohoLYZzslXzC2ZnUGFf41Ci
         eRd85yVgstJI09xsSIdVm7oZAwwYUoq3nuTYzIbDGenfUYu7zR7hh+ffRSpPf1P5r7De
         XY/l8YewcVGjPKwmn7XQVG1NYS8crn93bDWj9zAGCs/TbqkM6xR0dZcCpirza12EktEe
         5K9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789973826; x=1790578626;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sxxN/THrSyRW5wXS4Y0iUrjV5rVX5I/Bsxrc5z1M8nw=;
        b=tKfXt015hjBpegleTT5ywncfMHDe+Gjx/Sneb+cOQTEQynd4GEMHW2lkbBK8Loj1PL
         xGVI8WQrEis9G0bDxWZWyUH86PXSBBKKN0E0S7d9KFpGHJuLdlzMgsJilhXWgRwKjsne
         LFOhdNsCPb+x234FWd2RKfQK8Xiy+EU2tmnqIFys8dm16gdDcfWfqAzaOBykuNBmSIYU
         ZB3ukGQDOxYgwm5UZXjMqc9gUYIRMPv10pkG6DtOxAFoviF6eqPdfs+gObI4KxRbK4C1
         JAHDH1izXJ5t5uT7/vSPeo0dDSKTGyRr/d0ZjSK27oKHmmSPrHl+NMDYSuEJ5NWvWWT+
         EWWg==
X-Forwarded-Encrypted: i=1; AKwUvBzoHcyYlxZJZ4zvL+2dnveiIHr2vtagAh9tsnpslK/Rs4H6QEXnEKSh+cPaRO0sd1xjEbi1uXyMlcU=@lists.infradead.org
X-Gm-Message-State: AFuF++llAdiYMAXekev8WYw/XqI/CyIDF7ugmWBf0QYgw5vSEpOS69qW
	OG2+uKW2rnZmQPLiHgIN2sRMNfkE7teyG9iqkA99W4fELbDHR6l4DNg6O1Wxh1xlb3asl4GZGnu
	yyf6f5RHSxzn6/Y8sfxSEQUwqMFKzvwmFO3DeqmBtOmxKjkS5Q90HG2S0gPcYXJP0HhM1
X-Gm-Gg: AYBFou0YcQ5+UckS94zWqdhl5RlkfEVhNaJOmKe7pmI6jB5Jzb5+u6u84+SoMBZPRHF
	SR3OQW/2a0C1mINjRIkgKWCFnwA97wfFm+rRc6mmEYBbZbWid2FibkLv1Hgf23DTde9EVVjFfRJ
	nUILk+LKxxL1d2KdKuYcEHdUBtGzfju9Wek30aq+etGm0QmlRALMnJdVBGYrDrmjujEcTftNnSd
	q8RnaS4YKdLPxmNrGJ9HsuFTLMLVq42x2EqQc9MdnzUDQjBDaLiyXszSLuVWk5vfWVBp0wUzXeg
	aKHXTTEE/OVlAg6vj918PffFPq/qjo2sOAyDWTZanU/X46OiftUfeMJR9fAcWRNIXB0JvWuD3aG
	WxIun3ji0S1ed0pwRiM4IscBEamn9+g==
X-Received: by 2002:a05:6a21:e0a2:b0:3dd:a196:9074 with SMTP id adf61e73a8af0-3dda196a6a2mr8758771637.62.1789973826142;
        Sun, 20 Sep 2026 23:57:06 -0700 (PDT)
X-Received: by 2002:a05:6a21:e0a2:b0:3dd:a196:9074 with SMTP id adf61e73a8af0-3dda196a6a2mr8758747637.62.1789973825773;
        Sun, 20 Sep 2026 23:57:05 -0700 (PDT)
Received: from [192.168.1.7] ([106.222.232.197])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c33186490sm14551450eec.18.2026.09.20.23.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2026 23:57:05 -0700 (PDT)
Message-ID: <a5a4abe4-17a4-4ee3-a213-a9e136e31648@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 12:26:54 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/17] dt-bindings: phy: qcom,edp-phy: Document Nord eDP
 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
 <evvgtf6b46zqpolvybz6xfklakgoyv2llnvawrblgz6np7viza@gtmqflkwwmgk>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <evvgtf6b46zqpolvybz6xfklakgoyv2llnvawrblgz6np7viza@gtmqflkwwmgk>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA5OCBTYWx0ZWRfX71hNmuBH8BIB
 fh83rLwBO9m6+e/w5IS7sLui3N/S2z60CReNYiZ9O+MsixuEcscWinpNDnDybbM2rimmIK1c7Zg
 vRp9uY+6ELOXGrR/8RYqsEUbGp75gi0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA5OCBTYWx0ZWRfX77nla8kKY59v
 WSIzOqpYGshupKFXND8s3995HE8DnN4wiTdloYZRcVIhIMmUDftkn1SRqk6giGSa24pXyCYgFxD
 5/vL/8NO5JnRY68fS2dnpsc666fR7pdGIg5+hCV4lc1hY+JdlmUe1pXmnqWIZIup+atxBeUPWYs
 BwVxYrK8PaEd8URgNSj4/svuOdAaPihEPypEXf+rKPzZnl+JEDUuOB37/dxHgIEhYFj6wcVid03
 cYx0XPShBJxY1WypUWPimMhr9wyeCOTUpDRU8y6hBFhUPcsj3ti5ub4+5NDjiPhhVTstJdiypi+
 GAaOoZXamOccFt4Dz9bTStuDbuklnTfouRO20Nmq3UR7k0o5ituU838lLrKnlm4VUzezo1oxYk8
 RJG9eZORRMmakS1TLYjdhVvLFH54xrZlgBcGyb/qxxTeySEqoZCWQ8RtQARoMjAUUPL/r6lyow1
 fbx1iglj6dyFBYpvGaQ==
X-Proofpoint-ORIG-GUID: fiG0h82_NHdLAJUPIP59F2ggFJiowqPB
X-Proofpoint-GUID: fiG0h82_NHdLAJUPIP59F2ggFJiowqPB
X-Authority-Analysis: v=2.4 cv=A6r5rKWG c=1 sm=1 tr=0 ts=6ab0d542 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=u/G8viX4uCBxjZ048G+IxQ==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JS77pFG_HBBnnPoPU-kA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_235708_119058_9E9306D5 
X-CRM114-Status: GOOD (  14.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 9/14/2026 4:59 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 11, 2026 at 09:06:32PM +0530, Nabige Aala wrote:
>> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>>
>> Add the compatible for the eDP PHY found on the Qualcomm Nord SoC.
>>
>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
> Does it use ref clock?

Yes, it is using the ref clock.

[PATCH v2 1/3] arm64: dts: qcom: nord: Add display subsystem nodes - 
Shawn Guo 
<https://lore.kernel.org/all/20260920091930.2215803-2-shengchao.guo@oss.qualcomm.com/>

>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>> index 0bf8bf4f66ac..91d7a5c8e19a 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>> @@ -19,6 +19,7 @@ properties:
>>       oneOf:
>>         - enum:
>>             - qcom,glymur-dp-phy
>> +          - qcom,nord-dp-phy
>>             - qcom,sa8775p-edp-phy
>>             - qcom,sc7280-edp-phy
>>             - qcom,sc8180x-edp-phy
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
