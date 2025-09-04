Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FADACA1002
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 12:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZdEUOGHMLYNi4DqE3wDVTgNDJF9q4py3khQQ6XF2lw=; b=rtFXho00+6JDFV
	JXpBdCN5mahhybLHf1gY/EgcESeKrlRLovrCZ1MAQpqkjehzZySZhlNEXyChUKhUXuQRPjx96tf7n
	74N99FPiGsVp0gADTF4v5LZCeS/TskP+cL26UVFKYoohTdSLt3w6Odvz3thRW/KUxCSJLBTotph2L
	FwjeN57eIOGiZziFvynJ3R59t8nkI4NWdnT0lj406UwvZzS05eC+m+27pRNumSU+MEOa1C94HzVjL
	ek4r+2+rtmAW+i6OSzvczUjcrnop4rUD0vn7aW8nWPkjdpufnRfcNknUILcHg2wTF5meu+79avroO
	xTm3przl4O+1CFNwbAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu9Ni-0000000BfHa-0OjR;
	Thu, 04 Sep 2025 12:48:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7wA-0000000B9L5-08lw
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 11:15:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XK36023173
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 11:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOKtLhZE/W1bfuEuReYiTjW5qnUa6W0YPOAnKvpNQs8=; b=S//mWkFtDYgDqEHX
	AfSFCDuBgkj4G8y80FCF13N4WmTzvWhpTTvChmkG1RqDVxyKFY7RkR5weSUq9Tzh
	5E0w9RSp8Oas3srE/vw4BrRGnvjZgpEokod86vB4cA6Z/hf+8XIqwle1sOQroOaL
	EjevRNBO4EUVCHkT/Ef/i55BhHQohHW5Qlhb3Y6qv0H1lA5DvohfENNs3uZgPhrv
	VTiH02P3BB4ugz1a+PtgzK3sojB2sYuTwXh9iQWTlpFyqMqzJRlGLJ24BKQX+qP6
	uu6Zru1CJoqDs4iROEkKIvwpICJJ5uczS9OHecwOnUMX25s+SvGlkWx0EesuVe7X
	76fTGg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eqd8w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 11:15:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b2967fd196so2003411cf.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 04:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756984527; x=1757589327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOKtLhZE/W1bfuEuReYiTjW5qnUa6W0YPOAnKvpNQs8=;
        b=kSbjLPUWXzN61t36lXmEX/CRocwGKvslrvhg5lTz5AeWeCCAUxhblMHLL7RW1uvV0h
         8QNHMd0bjTzKyH64MOXnhMDa7ZPyUWcA/eOASMyXb1TRE2OjWQqqaN3v7Ot3xb9y+2TB
         DSJ2UN0Meege6eb1LZaGqhEu3rViXDvgrPZT8VsgaGJnFY3+7Sf1MRNgvMwqiOmOhC+4
         qCBOLQb2JzXy9NG7iafNrcZGnMVf4aasPT8OzgFeGA7UUjzpmG+nSQeOBM9HOgsUtNqa
         Zh5Zi1oTbROAxHwBWY/D2R8htn/GrZauiuEq6NZWIHG/GrGxw0mcWUOSu3q7A0uLU47G
         X8aA==
X-Forwarded-Encrypted: i=1; AJvYcCVXcwpfEyzeeJxJ9ubrHiVj+/2C2Ighnrl9+P+MzuHGzFv25JGfvKFZHg+O8akxur8tKdWFpjLBjGs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9JOxuMqoyl2VQ8w7+MNckTJpfZQVDKsnGtdcyLZP0E0LePfXC
	yH5AbrFlhmD7fOXQJzFx1pWV13IxoTbnE0/ute8XMiRDEIwLw1wH3oNGTrEJle+ysmk0Q9Qdmk9
	acQcoGUGx5QQ3nhMdvw7qE2P+rvY4bSPx11jjPVAO5SyHf1jfF/tgyFUe3pPA5SUF2I/U
X-Gm-Gg: ASbGncti/gTpNQ0P/PdWQ9NFknRqDmg6quxghVeHMsJoHNeSuPWMsIhc1zNk3W2aDPZ
	J2FGwk5D+Gv2GoLycpKnCq8WJ3EiJmO2AwVNjTj4w+5sxGw2XhLoIKf+XzBdLZ828epNtllotkQ
	USV44gkUOhx/SXpoZBquwsj6ck4kOdjc36V87/EohCvHScL7aJ3e1LrYvw9ZtFz/tugSJ06l0ou
	YShl3IfxagKrNFzO7VbHGCP2dka4yDMTJXssoMY1CZYshux63fCwlK+YZCpgPMkeIMswANAxvSq
	td0T/aMUQAR7xwGiuhu8Hq6X0eTrUPHbfanIWCCDq4kIVpyEFF57K3jrhp7nEAfYqgSQ7rNwaiK
	sm0wjQVa+TBh9wk/2Wa/ZlA==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr179595021cf.7.1756984526900;
        Thu, 04 Sep 2025 04:15:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7j0pS6IjjhSGlZj35O8i4kEMXE/eC6FnHTO0eI5oav2a4taNUJNhPrFFvhieF/D0b0vfiCQ==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr179594751cf.7.1756984526426;
        Thu, 04 Sep 2025 04:15:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04110b94cbsm1185570066b.93.2025.09.04.04.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 04:15:25 -0700 (PDT)
Message-ID: <46ea9ff9-f119-472c-ac5a-b91e36fcb226@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 13:15:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
 <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
 <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
X-Proofpoint-GUID: WzA3E3-lvJj1b_LEtKYPZ5SGg7ibXwd0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfXxMNypgHdrqfX
 jo2jAgllrA7HHRwYhp7vWh/uBa/2qj2yoqd63okN8AYanftYqzBbGoCAYx4b84esVnnqxZkMSPh
 HndmGioLk1Y9VbI3yv794C9jvhER4WEPYNQ+xnZzyh4DomYzkDJb9kixMuMsQxf7aqCi0ZmXbLd
 8vnGqfpCLozuW1x87+P343MdDtAXfFpsdZtI/IxMsnVvorHgd6PFfvpC6Qj0qCbESWldc6qHc8w
 WZsRN+0aNpOgf1G0WklyrE03kCMSB7kHrutAAXR8sIWZmVey0jwu9rSfNjqhfzZUMID/52iowUl
 9IorX6+1Xy4y68guI4xaiQgqWoRgAQPQ+oyZKwpWaO/URCLu68LPOjHPI+IKlyyJUiWLoo5k932
 OTzKXP59
X-Proofpoint-ORIG-GUID: WzA3E3-lvJj1b_LEtKYPZ5SGg7ibXwd0
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b974d0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=zjWQaSZ_NnQgvzHGnUkA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_041530_082493_45542F47 
X-CRM114-Status: GOOD (  14.53  )
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

On 9/4/25 1:13 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 04, 2025 at 12:47:43PM +0200, Konrad Dybcio wrote:
>> On 9/4/25 8:55 AM, Abel Vesa wrote:
>>> Add the missing v8 register offsets needed by the eDP/DP PHY driver.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>
>> + a couple folks that I talked to about this lately
>>
>> Please create a separate header for this, Glymur contains multiple
>> "v8"/"v8.x" PHYs that are not identical to one another (or vs ones
>> present on different SoCs), even if advertising that revision
> 
> Is it about v8 vs v8.xx ?

No

Two (different protocol) PHYs with the same revision data (rev_id
register) may have completely different register maps (even in the
COM region), both across SoCs and in (at least) Glymur's case, on
the same die

Two instances of the same PHY (e.g. 2 usb combo PHYs) will not have
such differences, just to make it clear

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
