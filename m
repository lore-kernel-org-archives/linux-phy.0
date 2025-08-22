Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49CF3CA0FE8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEipfkYvLAPa3yyDVzeDP5onJ00vGkw1jpEJTMVGY3k=; b=eroubAP8Y2pZeh
	HVwaviZ9xKMk4DYF1y5KSFcApqatWyjSlU4ujW41ImLkfrp+g/K8rHfCdNEBKibdJWWxQs2eCboLI
	taT6+8RkNzBp2RJK4LQoiUky+hGf1pgzCrRr0VsBRrwqmTmcwQDN8nLV28fkxhsKw/JMJ5qxnLNnD
	KlsxBVaoAoPTjgi60Fu9ndPfn7IH1zoEQYNndCMiR4Z6rhZYr0Qx674v+RWCH3iTcDmiL2knEfNWy
	bUbr850QSyrQa28LUNM0tHwvd1X+dRIYeetYrD0LNQ1tKiN61A3oR/3jKgH1m1ezEc0LTpAQvOCHj
	mFt8q/RYzMrfs1broDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZb2-00000003X4s-04kg;
	Fri, 22 Aug 2025 21:46:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNsK-000000021MK-3wbw
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 09:15:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UjQr019037
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Owu3/M/QJUQDNXTeSSRokvKyc2i7GLtBqRsTbdP1fWA=; b=idq4NFJMc+tr/fdY
	zWuINNDSyNrAvT9BXHQj5b99ZSok3elH6zqi3IHLPMeWmX26zrhet9z5LUclHbtw
	obed0iqjKVwyCDlGJMkh6gQ0FSBtZ/iVNkjUvzkeVphjA1uIcC+7rCRvvHwmZaww
	WLxOIu+ASuEZRSUxH71hlXnvt+PAS/RiXuzWfCu1i1JmsKGT2O2UnFIHttGLy3Zg
	M+3QNv1v/ujmjupYAv0GH780Rc3K8RMh1oHV1tuq1RU9+iqG+6WLu3uokrmWlLYX
	F41BR2d3aFGe0RMahjQ81w7nqRMEky6DWSwwAYA8TCK6A6tlWLyQv/2BWQ7NWpMx
	O06wHA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52b0gux-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:15:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9f5bdf6aso3911396d6.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 02:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854155; x=1756458955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Owu3/M/QJUQDNXTeSSRokvKyc2i7GLtBqRsTbdP1fWA=;
        b=rCoq66kQ4fuYty8Hx/7Ivo9iXJJ8DOJG5z2QmDr/le7/DoZKsVH9aWMiav48es+5bN
         MyrkNGws6I0b9zuMW+zn/kdWusNRw9OFqIu/UIUoRh3TqpdZ4m1xa8UZZFgCDsi8CJKe
         DfdzaXz6rQRtvrf+GlvjxAuaaEfvg7Pkj7wIoRqa4jzL4P77AN//5MkmPG118FBbOWAQ
         EcMW5Idirg8Vozyq79THI2i2eypuyQwFfm1TSXzJCYtEDbOr75cgoM39hhr2RDiOTXhQ
         yYiIprLo4fFZ3kzg9qH3zaZx4qCejuyGGsPEZ/vVYpZxoSnpaac1D+CGrptww/7Y/NHH
         eR1w==
X-Forwarded-Encrypted: i=1; AJvYcCW6NRgAz/5yIluKz8V8IAsuIiymIng1fTGs/tEYb14SLSW2IEGAkCO4iswyhQX0BwwysfP2gqB2oUQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0mrPQmDTXTH9xaz8k1tvuSldNio3Pa1U3eajpOd1MDbCx9aut
	pf8umpxuish4ywgTLeJStd7+OfxTerZBg6b6Uq/ocf/etxfhSxVYpDWQI9YQb6uu71GSsRjYP8S
	ID4rjheQB7fy/c/CxI7p3KIzi3Ol3emXvoYuwPrLFbr83phljMXOirciu/XI3jBDO0Krt
X-Gm-Gg: ASbGncuaEkB4HNP+foVwYSpIA551JQThAL8fcpsBIaRpipZ3f6Vy6ymSf25Q4sdTb20
	bJE9XoCDkt9R0gly2N7ogxRQehsQUFwyM7oDr93UAVzk9+3+TY2wOX4r5ocuP36QeAxk7Zie3IG
	B1+W4ILsN6dgxJt4GqRxiAgiaEpHCK7ko13Tcc7hY1qEC6H/HfHvEkZ/IOWyvXb9Jo/33gdubyd
	qqVWqu0NqvnZKIfq/dZlSiaXSbXNpYAniLBLLOjEhZgIyuOnZXxgrK3QI3W06sTVIFpsHXPpKNA
	LyQQxRtMdnhh/GGWv3Vp8PMfMyO5XYKD+zvtgUOXa2GRdAJVZ3vAPbnmU5AxsyUJvwYjnN6oxRK
	AdqhPToMgdoGYlMKYrA==
X-Received: by 2002:a05:6214:b67:b0:70d:6df3:9a79 with SMTP id 6a1803df08f44-70d97243921mr26581456d6.57.1755854154763;
        Fri, 22 Aug 2025 02:15:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy6Sek65h6xKz1DLTC1s5MdUClmKKfK9XaTQ1Rq47IFeeZrXNrNYv71xD4mfgWHSn1waZlmQ==
X-Received: by 2002:a05:6214:b67:b0:70d:6df3:9a79 with SMTP id 6a1803df08f44-70d97243921mr26581156d6.57.1755854154151;
        Fri, 22 Aug 2025 02:15:54 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35fb15sm3412573e87.52.2025.08.22.02.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:15:53 -0700 (PDT)
Message-ID: <761c97bb-ee90-4ace-acd3-08349831aade@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 12:15:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5vJFeumZzqr+
 CAVYAqbV6Ce7/aTLeXDcKNXct7ILBObe6foOuBggepXWFWbOMAFUO7xgux5dow3A8rVRb5Ro1JN
 c09NEBq9HTbCnDitgeZc7YQPfY+nlr3yWAhw2btJiYQXCmHn7WHgzcHXtXkhanXxswPGdlejtgV
 5cPw2BcHXIRyzpe5mzJ9IIRLsskq7sz87RjLUuSeW2zPewqkhhzwrxVyu391SuK+X72AhDTiWvU
 hzCZ0YNzTC0GIAJ0cabkD6xFSmbj/KHmGHAkjnQCPSNGtwQgOJVxeDZkuV8cjh1Q4h6Ed07z8jt
 1o0kKM4K1arW6ZA5PB5YzPUMevmzsKo2xMh+Txg3WFvge4XfhDSEXC4xztzBcnya++9K4mHn/Uv
 rVt1DPWCzJkCtzri/9L6RdbSybxkdA==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a8354b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EhswbOTC6dfh6Ow5hwMA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 1fotioO9ZyajTc7p53owG1FJe27DvWPC
X-Proofpoint-GUID: 1fotioO9ZyajTc7p53owG1FJe27DvWPC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_021557_101455_D3175ADC 
X-CRM114-Status: GOOD (  12.71  )
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

On 22/08/2025 11:53, Manivannan Sadhasivam wrote:
> On Wed, Aug 20, 2025 at 03:49:31AM GMT, Dmitry Baryshkov wrote:
>> On Wed, Aug 20, 2025 at 03:58:26AM +0530, Nitin Rawat wrote:
>>> Add regulator load voting support for SM8650 and SM8750 platforms by
>>> introducing dedicated regulator bulk data arrays with their load
>>> values.
>>>
>>> The load requirements are:
>>> - SM8650: vdda-phy (205mA), vdda-pll (17.5mA)
>>> - SM8750: vdda-phy (213mA), vdda-pll (18.3mA)
>>>
>>> This ensures stable operation and proper power management for these
>>> platforms where regulators are shared between the QMP USB PHY and
>>> other IP blocks by setting appropriate regulator load currents during PHY
>>> operations.
>>>
>>> Configurations without specific load requirements will continue to work
>>> unchanged, as init_load_uA remains zero-initialized when .init_load_uA
>>> is not provided.
>>
>> Can we please get configuration for the rest of the platforms?
>>
> 
> Only if the rest of the platforms require setting the load... It is not very
> clear if the older platforms share the regulators with other IPs or not.

Yes, they are usually shared. USB. PCIe and DSI frequently sit on the 
same voltage rails.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
