Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6422ACAC589
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 10:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBX65LWcfDFnmddrntcGfL+YYbqOgyCXxyrAFhZFgCw=; b=lAgLlynCSyuM2X
	zuNhWM8cmYrvonzd8jbpQVYsjTaTafSR6geDa0GWO8t9hFbOLvfbACcOXtB0VtscYMVLsUuZtWlDc
	xVmkH7N41nyw+e0zQA0hYSn6BxuTvXBrlDlYmYNzbgm1gboQF/QUcskPnPe2SzMKCBoLcFaVFmbmm
	2uk86gorff2FQK0u0O5cTb0TvmSNXrCYnEzyk2NeHDFe2WkelxUXkUaq1CqXYh/ueV4nsywquFy7Z
	/dECgb3v+POktrV6g+YbhjUxkz4CyyJ3Kn8MfdpxbJYX2wk2xibN2aszHNLAvBkiIRwsakaPR2lDA
	Av58tB+lsOfVahCyNz0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvMK-00000006IYu-3Z49;
	Tue, 09 Sep 2025 10:13:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvu1C-00000005g3h-0vHe
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 08:48:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896T1XN029994
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 08:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kb0CUgscggYSZpxpcmC4xv4Mz5gALmhi0zSX0+xuhwU=; b=hsGKWoYFicuyoDCf
	Ti04diUy7hLxVg47PJ/7DkxpbSIECaI2OEtcGzUtb5VrnzOOFWoKoY882YtZuz/6
	4YRLVlQpTk/vS9WSKf6PrGMJfW64Q9nfN0WaMbYIkIxQF/zl+B4j19jSQMAYM1jn
	4s29BNyiQ4LiGJQ4zRK82D4SCcd3ywYN+CxVgH4IPA3F/TYIz3LGT6IhVO23aJny
	tmMKspzb1qCJMF4LphD2nYCni8ipUU9YVn1YmgxRGGz66lrPCIN+9+cEVq0CJufh
	bkAHEcZcRqD72nuvTdIJMvVnZu3RWVebcGhgJWpzFaWYV4CvD9+azc7xAuDmEFcb
	1v3FDQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kyexr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 08:48:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-720802c209dso7736946d6.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 01:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407679; x=1758012479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kb0CUgscggYSZpxpcmC4xv4Mz5gALmhi0zSX0+xuhwU=;
        b=oGoIJn0nhQ0F9moq/0XnC+i/2YU5IOekWVQturDJ3rvefwpwr526E6KgVAVR+ZCsNv
         PpFh1ukqbWb86PMra5Xsm5CrEonz+qTQ0r62FbulZr7ksY3pIl53+O0Ck+nerCUuulGQ
         b6S6l+Q6gtkX1wM2EUjO5/vxia1ZCNctYpAQiuMDSYwOUzRfuTpQv9ou1NfoYo1+TvyQ
         vohuIeuI4fOAd2bgBGg3K4QbbZYyy6J4qO6hQoxOUrqmoqsSGCADZb32JI4K6FzFTM3Z
         jAq/yk4M6hNfPeREH0b+/wW5MU57uoYyTlbUgHx1u70x3ElW8aZGGylN0wjtPVXEOkTU
         5zcg==
X-Forwarded-Encrypted: i=1; AJvYcCU501ntOHrB69uWY+5Mh9CPk6XYvJJv3+DrifrchFJij6pd1PdClcV3uLl5+S3yXIq4qFre4BKWlyI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKmoK1t9rn4Vy4jGAGLK7n1H0aqsFtV91JIEU2inCeLttkxty+
	PP1kDoPIe3S4fjws8w50nMwzSxA5fkDJ6ymY8aTLWMuDLSg3FasLPeF+MfwFPp9VAr4RKIoLCn/
	pB/WVGzRZHnm4yWqEkjYB+sA+7PXgiVhWKcR6PNIkF6HWb83nHE/2OW6JpU/uWcf1zsY27D6c87
	Ht
X-Gm-Gg: ASbGncu3uQALMCXavMJxuX9UMB4wrPNJwcveMbLvy2z4ZlXU7rTPpioc73Z6mMxfThF
	vCTPx3nRgjKlwg4/5tMgRsN0ZKCcFOPAT2jCr5GR8YMH4GO5KJxsPX740OlspjTQGz2kxuNUK0+
	lloQkvgmR55YckSCh6hEQustwIRgZJAMTATByRR5DjyYUJJNJf4f11q02lUXQCXozirQxpLlA6v
	mMAvBDJhgj/khcc0ArIlVx+RCAXKGAU9NIcuE46FBbLqc7koSYjtCp57PIkscnjfMWdJc27Msy1
	IjQ73hTdbrajaRMfWuVK07S1XSJ7XzyRqELogUcY/ppNpI6w7OXE6uKghbqpv9uL8ntSSV/8U5D
	8/2PgtpzEVxEXIOGH0GB2AA==
X-Received: by 2002:ac8:574d:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4b5f8485b15mr71231961cf.7.1757407677918;
        Tue, 09 Sep 2025 01:47:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8NeMee6C0kM9sHZRCMxBaDlxp5DxwY+VBvze0KUdNj9nDNquj32l32DlypXhISIsSj6zokA==
X-Received: by 2002:ac8:574d:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4b5f8485b15mr71231871cf.7.1757407677406;
        Tue, 09 Sep 2025 01:47:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b047a90387esm1308826066b.0.2025.09.09.01.47.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:47:56 -0700 (PDT)
Message-ID: <a4f339f1-9490-4ff8-bd92-9b03c8f62ccc@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 10:47:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qcom: extract common code for DP clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
 <20250907-qcom-dp-phy-v1-4-46634a6a980b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-4-46634a6a980b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX20D9Adxqi3CM
 tXI/izVc5jZEv/Nt5cPoGiRHga4ET/EQlEMgYhiU6O9BlUYLn94KMlUcMUAg9xbQTjTx/+tNlJj
 cqUGiQu4O81TAcBQ4AdnTpky5U2QHPB7os/IWgHl5oJ4ObXHTWYg1F5LkVrQLPLx4XVixYz284e
 nTFmTQqGFlTAwoyOSDugt5MIg4XUyr6PVOI0PBERxZvGXSYZNzgTsJvYehDwhGOMaOYK+n7nkHW
 xBykwVhRRpkFAs0QdNrJMc90Y9fIm4zEijnz0Kp3v0GfLC/ZrMqFHkaKBNiIvZkaY0gqYw+0gHU
 0gkiwdbvFx2SKmUTeucQKDl0xPirYexkqht64ksJK63tFrQgxja+BoPfyx6tTX2VB07jmseh5le
 yxcBcK/n
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bfe9c0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eeBydtCU-ummJPyDYfAA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: JJhIWPZIAV17Hl1IJzSgGWg3Zg2JnyaR
X-Proofpoint-ORIG-GUID: JJhIWPZIAV17Hl1IJzSgGWg3Zg2JnyaR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_014802_298288_D5582921 
X-CRM114-Status: GOOD (  13.26  )
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

On 9/7/25 4:52 PM, Dmitry Baryshkov wrote:
> The combo QMP PHY and eDP PHY share DP clocks implementation. With the
> USBC PHY gaining DP support it is going to get yet another copy of the
> same code.
> 
> Extract common DP clock implementation to a separate module. In future
> we might want to extract more common functions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]


> + *      |                     |                 |
> + * +----v---------+  +--------v-----+  +--------v------+
> + * | vco_divided  |  | vco_divided  |  | vco_divided   |
> + * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
> + * |              |  |              |  |               |
> + * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
> + * +-------+------+  +-----+--------+  +--------+------+

div6 is oddly misaligned

[...]

> +static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
> +{
> +	switch (req->rate) {
> +	case 1620000000UL / 2:
> +	case 2700000000UL / 2:
> +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */

"(2.7 GHz / 2) == (5.4 GHz / 4) == (8.1 GHz / 6)"?


anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
