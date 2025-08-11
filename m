Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C774AC87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 10:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWNsoMiIbV64QOkjoNJD1SdnnHu5Fyhr3kmc0p+LFEw=; b=SrrlUGSPR3EL/j
	IZGXHMFNgyxzlSRKQ6OWhk3sOMWsCbmu5KJCOiNQFW/mVojvyKE2Tlivts2dq38FcDxSPGykE/pXR
	JKhHtknprv+VUwWlFmseNDpduQocb1NdmxoI2O9dyXu4BjHNqjRCoi2Mi7mNjytESWRht7qUQRGAA
	B+kj+Kc3GCiR5Fb9bXtg3sHZhzV6MeU4s4CFgwRNWSvMLrbk3lYjPr+puT5GDx7UDbe0HL8FcUN6W
	I4xEk67k8gsJAWQdR1stLNMMdkcXSzKJPGeaU5AxeHnXeGBi/ijr2WeJVdaPuPFJPIxj/voCbYUxa
	rsWsMxD9sBDPcv1j3eSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQ3C-00000007O2Q-1V2B;
	Mon, 11 Aug 2025 10:46:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulPtp-00000007Lbo-2NLo
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 10:37:10 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9d9nO028799
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:37:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6J24Z6vXIRBkYsnNDEpJUSa0Kgse74Ef/BzsEOsA0z8=; b=S+J0AC6qY0UYJMaJ
	M6vU6EDV5FPItVmIwf9NVBwbc9o9Codo30mkWYwcVGQWyxWl0jgPg18uBGyrwGb+
	Fy2fYPQnM2bKZOaIfSNMTM0KYtvB9nzs369FK0U6yKZnDJzs1jJk6LjRMxEWAe4B
	GOXFT0lBpwMDEep43ItDthHT0PzePvyi35j0EjRDIFdEe1iwAo4Mgk9+T4nBEf4+
	jfAKE2iX7wrPOEcfzOJy8VB0yXXeLH59HMGO6Pp9Y/Jhc0g4ogGoLWV4jNWClhzI
	9za1XRVtzlyJAfn/p08lkCjwJInQ6bndEb8zsPv2U94+eN4hY5kCqSCP4u0w2aZd
	y4Hf8w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sm53k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 10:37:04 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f539358795so16441936d6.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 03:37:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754908624; x=1755513424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6J24Z6vXIRBkYsnNDEpJUSa0Kgse74Ef/BzsEOsA0z8=;
        b=Cfrh2Nu+llG4HGQgvmXD7xLK0PGjb3WcgdpMyU2ArpNTqn6zVrNUho7NsVzlDJLrqr
         vMAavuOyvnDgp0PrO5WITlJbKLggDfcqzKaMkN3MoxKxvnI6q/Ajl+AjSvvqs0HwTs46
         C7rh5B299u0JbcLMBS/OxS1CHXPfKeXjIMWP393DOF0ZwVHqYglqPctbDCV3e3TGdabG
         Q0sJkI5p2r4znGNQTa9wSG2DiUvVzEfQmf7YTKmsFaoJ1guqhQtvELnje4TyAbUDgmc2
         O6zUdlPEBhQKt1thfSrsjevyuKILesk9M6Tlr7RXSThUSEYXiUdtqYaK+AendsbeTHue
         RXyw==
X-Forwarded-Encrypted: i=1; AJvYcCXgg8f69pnZ28wDRq5pN9Nbb5PE8wgs35i7J/SrZe0ROQMXoB3TdXSlNaqQfGN/aNmeeoAwaz4hzTg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHShI0lMwfHa0mANZuBBx5sUM5qb3j50txpQDk0TvlDsSGChWD
	qm22GP2y75Q5uAYfJ35IgKrj1ifXt38OgnJEyDvq0PtVSNTHQXJnAOm3ObFHoGWjH6DcFUWY/nF
	b58Nb8k9FwrZMNsq7WEnN8+ewtqPyTjO2I93NSzNX0yZeK3cBRCSiPKYAzXJVo9Se/GtV
X-Gm-Gg: ASbGncvgvBfm24qYvac9m71mx6r6G+topoppn/j3Y9TAm/kHjkGH9RQexiv0K+lYSj0
	dv3i198AF2V6Ut9AiXebt1Jktu0agB4BWbyRL7o7iQyGyY5zqufG5fKv4T5VmgtT5JwFssKCU6y
	EfxIojOZ2v3Be9wRYr2J6iETxOZfRIde5b0gdJUR+XhQcj7gZvxapf3cw4BNBQJOgY+ZoTsOChA
	wvGUKjX4t1wMa1lyY2dQvJXBdJgf4PLWEYjny5d5MBQJE0vBmFIO8O/5e+OSLdUAG5Xj3T8vB4g
	gOOjYNo6LrPw78GW/hMlFQMeY+GtFE4x25J/golIBf4HF8RACKkRsSStmTKt52cUtisBddsrxhH
	M7/4hGI5+Ig0yFtzCbQ==
X-Received: by 2002:a05:6214:e4c:b0:709:5007:9f80 with SMTP id 6a1803df08f44-709abcb6b7cmr55987196d6.0.1754908623532;
        Mon, 11 Aug 2025 03:37:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTrAinsHS3lX6lpHjYp65jzzXK4FwsVNqOAIzUsaWy9noN4VK/hftIl5eBF7ttkBFQYzjclg==
X-Received: by 2002:a05:6214:e4c:b0:709:5007:9f80 with SMTP id 6a1803df08f44-709abcb6b7cmr55987086d6.0.1754908623021;
        Mon, 11 Aug 2025 03:37:03 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f245c1sm18271623a12.22.2025.08.11.03.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 03:37:02 -0700 (PDT)
Message-ID: <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 12:37:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=6899c7d1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ZHkuymcytaaAwfHE7G8A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: up1lVPA3WI74Axzsua6ycv0Bj1o4Brwx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX0iDqb+rAxpv7
 /gmo0sBNP3aHMKJgUUkIA0yF/KK2F2uO/fI85ZOx2urZFg9kptRYJ9ZQ/QpsqwG+pJ9e8FhRRvn
 eKZUP0m/Dc5AJesxKUqNERgcSiPsMin5KNV+yo5zQOEg23p/duE+PLFAERZcPNaLCmilBzh4t2S
 7IPSOs1so+8QzT6Uta99wemFSGoeEHFt6W/km6M/YMzziKbxVU92NzK7DHbRb9sW5cvnqKw/pt4
 oNWPllM9McEACpgmF08T785IFHeXLeHl6C9vnjnoHOQPipzPDCEge8Ch5GY5UPPAgGSdiYr8jvT
 equIiianwei+d4aO/tJ0EZfwh2qCZ8W+9sl5U7mGWg0pVrt0YnYwttkoan3H852yLJXzCKPtAgy
 fn3BSjSk
X-Proofpoint-GUID: up1lVPA3WI74Axzsua6ycv0Bj1o4Brwx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_033705_615862_48CFF849 
X-CRM114-Status: GOOD (  19.34  )
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

On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
> On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> [konrad: renaming, rewording, bug fixes]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>>  1 file changed, 113 insertions(+), 5 deletions(-)
>>
>> +
>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
>> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>> +		return 0;
>> +	}
> 
> I can't say that I'm fully happy about it, nevertheless:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

IIUC we'll be able to get rid of it after the dp rework?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
