Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5661CAC58D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 09:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auFENDIlqLB9AJldsrwACCNG+Jp9ARpLvXUQ0isbAF4=; b=RSp6PirJAmA132
	JJ6oSxeZiua4YOIbUGsUqwKlwO8LgQBHWx6TqJwc993yebU0W2CwynfGKi9PtZtFn1lwLrd2zYgpx
	QbqVl5qCHrIoetPNWBhnso0TQtZxJFGfNmouNvP3aSkZwCuUXTU7xjGHgpNqS8hTusWZIgwflefU2
	NFTTZXh4JSK1aThkjSuxuxOfeYylRcvMhNmebTz11ba4p1L88fnl+mq0iemjp8IIF/k6EJOtJmkXm
	ZJb7ZgUn/lD57lJkbWtU9J51TkpjClzou22VkF0jDLUixIW4T8+n+TYKCqTqE0xGYH8wirN2EPB8m
	wQjSiE6SQUav5rUx/clQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdSI-0000000242P-2aUc;
	Thu, 11 Sep 2025 09:19:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdSF-0000000240r-3y0f
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 09:19:01 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B8VS57002810
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 09:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5bezhBuF4V+ybzXrQaFEQjpHR9x111qy3qVqkDZWxW0=; b=k+EtQOfO9mI+GZxn
	FMOypxcStoOpBCYlG4Un8ZZOteM61Qkd8OJ/bu/BEVe5mIXr4D+ZasyrSX/wU9gm
	PRzlGy28CC7qaKvGR7E151JuWJAzzebDYm9cPeYgViBl7pNZ7lzVGpBCNzrKet18
	mhbk426TWGWdMdvznD/sP0LQe4WiJD9GH0HibFhaGjOEtmvJNnGXAyJ6rxjRmme2
	gbrnNOsxOquarYPI9HHqegWp/dc2P0YArLYFQhcEgFZJmNN869G7tV5MDCQp9GvW
	+NND/QaewL2P4pAp7941R2qTnl9p11Zf+T9rrhzWakZjrrUeFFg0+i4Rp6DGT8ia
	54+mgQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493tyxr4tq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 09:18:58 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-71ce3c952c1so1158256d6.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 02:18:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757582338; x=1758187138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5bezhBuF4V+ybzXrQaFEQjpHR9x111qy3qVqkDZWxW0=;
        b=XRv4cGgyzCs413mnxioJ7hqqspwqOYHu0fufX3F7PGYcqly7MKtW2aPGFkJajNvb4t
         5M4BauKwncxwURVLIQUYkp+rcM5wuShhcq5xpXfHqMRB1VaIG3J6hycieDFRKoF6Sye/
         /kkaE8exQjKOjDkFSIQ0Z/EhmGFm0PmisiKdBASA2bNZvX4VxjpjXkKL+FE3O5g/LceY
         n3wlNTSH7i91BsaTdiPSHs3gr0/HVWklf+HChvgQc3LMciryaUiMUFKt2/W08MbUD7Zo
         fHWNUujIP8QnWvBjVIPZe5zhnNdQGTEnoe3HTUzUk/yTs5yw+DzTdz6qnOa0VHntqkLi
         RhIw==
X-Forwarded-Encrypted: i=1; AJvYcCUDO92MhisHNGHeY++2LAidf7qqhK2Q+eCqDc7t+psIrMXTLxySTB+o/n8sq89zqtBjmTD4epGH1O4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUNIRxXGmGgRme0Xd0bm5k0nP+0VbT+ULejWtsVeeqmAvVPyc/
	czoiNGLMOpM36W+n1zAm+l2nWtpvYhfOQDL/9RBMsQdjyYDHVtHgpYMZNI/2msAzyuZ/Im9UkZc
	4IH7efcuP78U4Ei+EwjVkkCC28a1pw/FiuPiRZUkb2Am0fLVMCntO4NFqGPf1NuMPwzNR
X-Gm-Gg: ASbGncuKlTwW+KI+jBEgKVukny8jAtM1frAhe8V82eNrbHyUTchoJu5iOglriL75394
	BpQwfiZaN2jQAj+8/DhVbY9vXxGz6IYG1zWvqFdLTCSNEOcfmVdgMGEwVstL9a2mu3At+BbSCzq
	JtdntD2khy3ftx9X8TRLJf/9hXP76SbyVFtSTmHxFKzk9Fh5G6CnnZNucMIgdSdh18NmwDyJWER
	UeiHZs7UWCpwK2Si+NBGQjbyj4UsK9870IupsI8tKCxfikdwgrmty4tMQP/z5oqfw+7qPlfPh1L
	leH2ca1YjQtR8/xMix0UkBKVD9hN7+6i8bzOWY9tFc4EIjz/VlcZBpARqX3VIzkOhFCWJEDmW6B
	+dNKi1+SXokzliyZ8keB7dw==
X-Received: by 2002:a05:622a:13d4:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4b5f835b943mr127330201cf.1.1757582337843;
        Thu, 11 Sep 2025 02:18:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHej3+Jv2aNe7UGy/rc68B8SuvBsniqqU8vGxQjkNQ7UnfITPBTfccyXJrxQognHpUtMSpmCg==
X-Received: by 2002:a05:622a:13d4:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4b5f835b943mr127330081cf.1.1757582337152;
        Thu, 11 Sep 2025 02:18:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dcf77sm88434166b.64.2025.09.11.02.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 02:18:56 -0700 (PDT)
Message-ID: <fff688c9-af7d-43fd-a3f1-00209842bcc9@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 11:18:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] phy: qcom: edp: Add Glymur platform support
To: Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
 <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
 <wetzewmbraeawwintmxqntjhvennq5iu2jeegel3glk7y6rsnf@4vwscm5bwezr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wetzewmbraeawwintmxqntjhvennq5iu2jeegel3glk7y6rsnf@4vwscm5bwezr>
X-Proofpoint-ORIG-GUID: nIctoZOJVNupjpKZjbCigAhWrbgOtldm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA3NCBTYWx0ZWRfX933dTdKN61nu
 9YHaNY4JwMAOWQ87ZhPnL2C1SxIjT2R45gNM4XvhkA4bCdVqnXHLMNbShriu36sUSTpaCo8a+uO
 KNAVsfjD48LQZ+CfkSZWjlIm3uVxF9IFIqeaMBM1yAhP0S9hEeEmbYjSQyTlGlXrfUcpYbfv4q/
 4WxxmVI3sv4dN/0+ghB/UrmGFLG2WwYd05aaL9pw/HyUUCjnuH1MnWnk1wmWsglm2SjY/R/UMKJ
 8xinN+1/6wd69HnzM45heCyR5Hpu6eo39ucTH9Ac4lLOL5J/hBGoSo0d8QDIEg29XSZUapeoBKK
 rJ+XXUujgzHUXjcGI2QgQErT11YwMpy4fRTbRIp5xyI8tUQIrYV2DJMLgMmJWNK24in3bLC4sIh
 evA0ckaR
X-Authority-Analysis: v=2.4 cv=VZn3PEp9 c=1 sm=1 tr=0 ts=68c29402 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=XHNhzRT3Os4RIKAzT70A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: nIctoZOJVNupjpKZjbCigAhWrbgOtldm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_021900_106131_7B3BFA77 
X-CRM114-Status: GOOD (  18.63  )
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

On 9/11/25 10:52 AM, Abel Vesa wrote:
> On 25-09-09 14:12:46, Dmitry Baryshkov wrote:
>> On Tue, Sep 09, 2025 at 01:07:28PM +0300, Abel Vesa wrote:
>>> The Qualcomm Glymur platform has the new v8 version
>>> of the eDP/DP PHY. So rework the driver to support this
>>> new version and add the platform specific configuration data.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-edp.c | 242 ++++++++++++++++++++++++++++++++++--
>>>  1 file changed, 235 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>>> index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>>> @@ -26,13 +26,15 @@
>>>  #include "phy-qcom-qmp-qserdes-com-v4.h"
>>>  #include "phy-qcom-qmp-qserdes-com-v6.h"
>>>  
>>> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
>>> +
>>>  /* EDP_PHY registers */
>>>  #define DP_PHY_CFG                              0x0010
>>>  #define DP_PHY_CFG_1                            0x0014
>>>  #define DP_PHY_PD_CTL                           0x001c
>>>  #define DP_PHY_MODE                             0x0020
>>>  
>>> -#define DP_AUX_CFG_SIZE                         10
>>> +#define DP_AUX_CFG_SIZE                         13
>>
>> If it differs from platform to platform, do we need to continue defining
>> it?
>>
>> Also, if the AUX CFG size has increased, didn't it cause other registers
>> to shift too?
> 
> AFAICT, all platforms have AUX_CFG0 through AUX_CFG12, we just didn't
> need to write anything to the last two so far.

I checked 7180/7280/8180/8280/x1e/Glymur and they all do

It would make sense to perhaps spell this out explicitly in a separate
patch

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
