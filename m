Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 361ABFF885A
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 13:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ur34n2FeqYTETAcmZdAODAnKMWSWNhZ1GpJJc5Wpwd8=; b=I19/Jg/phydojG
	aaPIb35BOrxuSuGRNkr1THe2teCk6bJfUfB1cgHF5Hj17cABY6VG863F2KOV+CCmS262wAMNCIj3J
	JShG2OEKysGoQ1nprdlA5NkNR8hIiWhinqgJ8CjcUzD35O6fioYND6AjCzN3rZl8u2bxqFFFrddOF
	ks2jlCjPFZxBLmhH1onXFgn18ZlTo4/YjpxU4S2lfXNeG8q7IvqosqU1k7NthQq33gB0j4b6DQpVa
	cVcn2p3JheOynzj9n2YXffLtNVxmf0N9fxTZbP1fvhcg6YcBClRYom+f3wQv/Lvek0f4PlaVZ0aS+
	k9MlgfBSzpjH7FXxZPcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFoZ-0000000GLET-45B0;
	Tue, 05 May 2026 13:27:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFoX-0000000GLDA-2eOZ
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 13:27:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6457CUtL1960770
	for <linux-phy@lists.infradead.org>; Tue, 5 May 2026 13:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cedj18wV+A5NTGkRX4FL8XkMugJBRQyPoSmH+1d/Zs4=; b=m+MXdR7m3hHbjb3f
	xSRJcRBZnY6g+vhMZ3DAREZuTB+zbnIJFxAF15UfE4uvZ+kT83h6aJsX6hb2byNb
	DLiNglJb2YDYAPLL6UboyyPZ74Du4wP9gbzs7XsxW2XznFU0/GlXExBf4i47sLfj
	A4gGhf+5UCPJWPt7k4nacqBkIhwdqwMb4D9UQ447nuAYFSTGpQ80/XyW7x3s/fg/
	XHzIvMeSxIplV+DC6EDLqUCIxmbaKfy9FXvUP338WfFaTA39i09iPhJ/PcKiNlfL
	n8kiFpOAbLTKieA6rpSPMIh7b2QwocnTWPaAqBE1DEpG/YziavvtYjpjMKWWZ0Jy
	oISF8Q==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxw5dvhg1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 13:27:52 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2bdd327d970so3267732eec.1
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 06:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777987672; x=1778592472; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cedj18wV+A5NTGkRX4FL8XkMugJBRQyPoSmH+1d/Zs4=;
        b=XckBuFIqX4bNj+o6e1nxhn+iYT3nBjqWOyWMrw6y3iJK2oncv00UM5JGgM1nDN28kA
         ByBFzrdmw9C9mKywEcfbV+GMz1iCtNy+aWxhU0/e58isgd3hLYqgkiv7RhoCWNhIW1/q
         B0DWuG2MDsDx/ZEHNAMogJcTxkjbeUh/ZkI21wDngjOrFq5xrnIIMbMV6JqHTHN2S3lJ
         U+CQFChvqDUCNeH3LIA2x6Tcf6K6NS9zqWPpSFq00RH7JrGb/TIF240MEIrnuAneYuuk
         8RThmg/ZEzr6//6O6emRvkVYFOfmEE/gzePNccpAMEl85vc1gq6BTw4TRh55jdM7NNdo
         qSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777987672; x=1778592472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cedj18wV+A5NTGkRX4FL8XkMugJBRQyPoSmH+1d/Zs4=;
        b=ib0Xaax4M910UKOtDWCbMs1uedDFrWMd3xRENoJoTpT8Y/oip2XzgNHQPU53iOwqC1
         V5QLtVt1J27s8ti7opUcZDwQnWMGsmNDyQpjeKPQzxO3MThyDMzNBRtZslc7VE8sq/on
         +MIme63f2ph/q6RhMfPgQv8KnrlUonQ3nprMKG7I2BayQvAHNnlBDp1TM1BHgwlvWZRV
         25PB8YwYAqLGB2Bxa6ROW7gbEp8GknE/NpqUpAMMlYtu/+6xNBUC6MKJUuL3GnCObO4H
         aBojTTETerQqTXjCv+e87IqnYCSPHgYmR/DwizuvlZIC/1hWol0/LnRhpyYIIIiMVYjN
         yd+w==
X-Forwarded-Encrypted: i=1; AFNElJ/RIJleX+/MjfKTmSjqP7AhE+gzKYuVu5rGoPxfgUPDYh6Dy3MTUAWq9G/31zv2x0BXUN2iG+IzDC4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzelTNuaQmRvSxm/kT3tn3nRXazAtBiS5uHpQvb96iLMRgbSrNz
	2TN9yuWVdgGeINMX/VhEQD++NLvma6UQXughaXfa9gu4gmp9dtbje8AmcSZtv4xLXbl767KkKRf
	y3GUdB2afsD3x7v4Vm747vte3zqFCvciCLvQjV5buzCk+Qn6mDXYQk1ehi7XCM5eEa9at
X-Gm-Gg: AeBDievvxCvNsfIPP1GrDUIIhuoCJR/klDFmrwZqXY19hI4DpPZIOz7U0y3ol0rslnY
	1lhvT/h9Br5m3cToqP3wMhPSD3nYR4WSeSO2Vj+CtmeVfosAbjEwpYzgmbamjFharv/0z0x9sbv
	Qc8pwFImeJYf1jnTT9wnWNT1/EPeovcu0myVoAn4lc3KFa/yjgENBtMYhMeelDADD8ArK6M9IPL
	rn+Le5bQFl+9H3KKibDrsIHTOUDKPNe1mt2OaEPydt/ytISgT2ukhqr8N8plS+fVbId/giiuFZJ
	q5XgRFZDLAIeAOMbYH3k+14AzA9UpO1wSzz2ihCi4Ws+L9Xg3EMLUvP3X6zxJ2tmlM4dBE3ln8+
	eBHlK5vs5QlqZoF/Ijcn72r2T3lBf/QgKm2FNadv9c37I2Lc6NVaWIZVb4dVuo8boQUcUL/40hd
	BdgvLVkFuDzuOHpYW+xVXmJUyz
X-Received: by 2002:a05:7300:320a:b0:2ed:e16:6b38 with SMTP id 5a478bee46e88-2f3cfdcd781mr1725626eec.16.1777987672245;
        Tue, 05 May 2026 06:27:52 -0700 (PDT)
X-Received: by 2002:a05:7300:320a:b0:2ed:e16:6b38 with SMTP id 5a478bee46e88-2f3cfdcd781mr1725590eec.16.1777987671627;
        Tue, 05 May 2026 06:27:51 -0700 (PDT)
Received: from [192.168.1.2] ([122.177.242.135])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f3bf67cf8dsm5359555eec.6.2026.05.05.06.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2026 06:27:51 -0700 (PDT)
Message-ID: <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
Date: Tue, 5 May 2026 18:57:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
 <20260505-gifted-salamander-of-prowess-5107a6@quoll>
 <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDEyOCBTYWx0ZWRfX7L06NkK8qwJF
 /WBd20u2L2nEfNWGcys9nJRT5jvtBhyUnVDYwZSH1eP1NKx0DG5oZkYxah84ARUu8AujD+8uyk1
 pw9F1nxQuPwWrWgaZUDVAFhtIs6RkCnweopfa4nhwKoK+R/+pB21QWhUVz4mgq6fFGcaOrIy1p7
 UXVB426r9FTjtNqENarEqg9vql5AsKygCgFKyzIChXEm4KS742SOKGA3pZGm+e31PEPX7n7BnAW
 1VtUBTrzk5GTijhzLuwIBE+CGronFVETp8jgaoNTKlXIZDUx0iZPAKdY+BJYmUtaviEo1M3/Yn1
 afM5PyAu6G6+ukNDqMIC5Q9XEUI4TtkKbk0Yv7FOAOScBZMMH9QMFJZgQSduDPwKrBhzK2tRzNL
 XPgzlApaYPlh2YcixIVBE/uqMWPGbTq1qn7aoU8B/+jnDl9OH0lEON6PdCcXDZDfBdvebmgUjS3
 Od04n/vtLzXj9YqiX5g==
X-Proofpoint-GUID: QNIJhzU6UJAl5pFSP3rcEj-u3jYajDIA
X-Proofpoint-ORIG-GUID: QNIJhzU6UJAl5pFSP3rcEj-u3jYajDIA
X-Authority-Analysis: v=2.4 cv=HpJG3UTS c=1 sm=1 tr=0 ts=69f9f059 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=1ETSEvoV01wl5CnlN8iVEw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=iob6wRauG21zkpGokN0A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_062753_682569_7B6012A9 
X-CRM114-Status: GOOD (  12.26  )
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



On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>   1 file changed, 2 insertions(+)
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ... and then I looked at the driver. So un-reviewed. Devices are clearly
> compatible. If not, explain what is not compatible.
> 
Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.

In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have 
GCC_USB3_PRIM_PHY_AUX_CLK.

Hence, I didn't use a fallback compatible.

Regards,
Krishna,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
