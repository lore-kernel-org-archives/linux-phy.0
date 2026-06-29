Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D8BC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hOu3QOA+0k9zqmyVh5eby+A0QpUY8zt5uekeOEZG7Q=; b=f15VH2n3G6SsmH
	oZTz4aRDleOiJTHgRg4F7Ym2KANhC/9EZVxNNrs3DbM6JoaYDF5V1dPksQmDZ1fKO/W9qSWrlhhmb
	EHBwxCLkvrJg3EdzPE5CRqF4whiikHQZHoQ+hYoEi88IuHhHoP87K2XrDjcpjp68gqgqYE9tEGxMG
	Ilnra4emfxQo//DqKtCgwxJ6dm2g2I9I4IXyjMiYI5s3ghw6pkHRJD8fwWoeEqP0dCQGvRrcVh0H3
	6gfRPVeGSr2fuGg//O78vlgg8JPSgOm2WqZ/DnRG+cTJNG/KNWjws/ncqPYSlE3xe4AqxdBUBiqeZ
	z6KdOfEbbOhKtLyglWSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8BJ-0000000E9He-1bWg;
	Mon, 29 Jun 2026 09:21:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8BH-0000000E9HC-1eg5
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:21:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T91OGW2400911
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:21:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kvKRqFaZT4QsqNsCb/8RdQNtvL3NSF6wNCLnxFXtedc=; b=jGgCX84mP/oiSZuj
	NBKhXtU5BgjMAyv99z/W3utzl6ISi8Ka6HBf9ORy8gT2aTNwRsjMcOmWBUXJjcnu
	I3XrB7lqN12oQ4E2vO4uN8tO3VuBlmR+n/RlyGD/WE4l30GLyXUYC+lorbF6+QlG
	0LjW69AYt7jbq4LUdgjigPOAh4LrpQQLFw4RXGngH9dJyAplDQq9yFgbmuMtLaJc
	T5F6R7aVf7apNKQL7hPtozbz3XwsrRpMAyh8YhxNKXFj/Helbr7y2vXIGCbNCnm6
	Py8hVCH1YEAfFZydPDpUAiBGMweilh3fszzIHg2eTGWm1jIRLeXi6mkh5oAxZhDg
	Y4TZTw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3nq88324-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:21:30 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9692160501cso72157241.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 02:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782724890; x=1783329690; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kvKRqFaZT4QsqNsCb/8RdQNtvL3NSF6wNCLnxFXtedc=;
        b=e+OeT3EIa3uSF2ecHFnwWNKyZlf5agxqpbgdKlVYGQ+Us0OClAf8yw9CpmaBLTpOTJ
         IwScEBRorPmsCw9ZJNTeT3pxbiVuskDGHcG08JCFO/crGeoYupO7N3SZ4mU5E+3LzME7
         /w1dnsJkenyryFinyk68Nd15WR/+Bm15D3kuB401HrvXbIQp+oryBTVI5SCoGUT22f9M
         vvtXPCWI6b6VbQvyogPsaNNWr/DPSG+mZOBe/grBoE8RSLI1NlkxvILDeSAl1ADyvAoN
         7ZPTvE31rL3lVL4NYPEoZ/Q+UJ5jFGh1+rMKN5cezZxm+xCMsawDp29kW5zVKw0D06kW
         HTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782724890; x=1783329690;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kvKRqFaZT4QsqNsCb/8RdQNtvL3NSF6wNCLnxFXtedc=;
        b=Lk7Axi6eMSwN/sMkMPODTcNUyo6OkWnp7wM9xydUU/7XJhcvxYIToub7uKSd7LOJ5+
         cUzH96ennBa6RGGaBxDsxLA1yFuD6xP0LBvXDnMFGrUB+deaTe0REaMOPdqr/K/BkzK7
         xh7JpUuDWPoH5o9u5xZAyuAk4p38DskN9t2PnEueyCyVoXqCLJ9Le0oCzgzZMjJnK3lg
         kAue8geO53lwOr4pgqmJW4BS+puFYdAEk8Gpyrr1B7uqWEuLqZIbSvgsvGGYMzyqw000
         OpJHZzNZNoU3sLO7Pa76mP7w8VztGoSnWhI4Ita9X7muV6K1Ev/vjKwsb9fJhfFqoeY/
         VwqQ==
X-Forwarded-Encrypted: i=1; AHgh+RqmfQuEAq76XC379J2xE23tBqJO2ZXXq5/5ukXm+yoJzKLgiNnyRzie9a93v3u5UuLKZEPfjXR4/Wk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlSxhf4Rgqw9JPucv0XATYTu2U34AbLgb4cUnt9+qX121AnNJ/
	LRwONnq+A1g9PQjHr85ZyVO56qKQRuD0cLteNPmo1evrOtrCiboNvif6/H/P8HHrj03urL38spY
	5LWmaq1xF4wf17IvW1yCKg8Lh8+AMYI/xDrz9WrQWw7R+7NCj5xEDpyyEk+sAuUNtq5Rc
X-Gm-Gg: AfdE7clC08ocgku9ynAs1Pgen8fGqR3VaNVbXpimEEYGnonta7icXej3zORJhMYAL3q
	a9ZUa2hfINYPfrZJuF+0zdqHOb9h/pUQo52wgiecE3z7z+L561tM3fvl0H+od+B8WOCTtvBiX9X
	uc/odX/gn4MghnZk16W5eJjXbAdrJdgvLCefk48F+6mIgy3wvAcegQsWA+hS0NqvURi17473amL
	n4+qwD9bHrMySSeoViIyFodzKV2+Wm/ebO3Z68Cn0FEwhuYD3IKuWWRg50NwWWuvcvHmY6+jZKT
	UNeJw6bDwphwbD5i/KDS7v282rUGIPt6yFIahscgrGZjhMEtafjRIIuT7FG3bsRXn2OcZzZ+j4Q
	24b21R6sKdktjSINnXRLtGeaI9xGK3HAqA2M=
X-Received: by 2002:a05:6102:a4a:b0:738:b13a:c810 with SMTP id ada2fe7eead31-738b13af99bmr445050137.2.1782724889854;
        Mon, 29 Jun 2026 02:21:29 -0700 (PDT)
X-Received: by 2002:a05:6102:a4a:b0:738:b13a:c810 with SMTP id ada2fe7eead31-738b13af99bmr445045137.2.1782724889291;
        Mon, 29 Jun 2026 02:21:29 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6983a7f3989sm3836391a12.16.2026.06.29.02.21.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:21:28 -0700 (PDT)
Message-ID: <a99fb61e-b11a-4902-93f1-47c32c5f5b6f@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 11:21:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 2/9] dt-bindings: phy: qcom-qmp: Add PHY selector
 and Glymur link-mode macros
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-2-269cd73cc5d1@oss.qualcomm.com>
 <bb3dd1d0-af41-4ecf-b23a-3800aa5414ce@oss.qualcomm.com>
 <akIAPK7daXxPH5JO@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <akIAPK7daXxPH5JO@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: mA_SG_jqbcTwMk1_LDuKaZbxnogfNKNZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX/hayofcsBFJC
 VZjzNMy7YLqIPLqq1EFNBHoSefIVACpdxMfBmGDAlX3KCs/5iS1vVdoEaG2lB1t/DWLPPi6nzwR
 0bPfek7I95Rl3xZOlju5VuIUl9+r7UE=
X-Proofpoint-ORIG-GUID: mA_SG_jqbcTwMk1_LDuKaZbxnogfNKNZ
X-Authority-Analysis: v=2.4 cv=PqSjqQM3 c=1 sm=1 tr=0 ts=6a42391a cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=T8ljNkuw5NW2mJYCfz4A:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX2D0/6n7CZJ9r
 RP5HaoU+bps+PYzM+yL7YneuHSqG+meQeV1/l+sy2Smyz0YdP4/Fh7bodaLQ4yX37NpHHppt108
 RUwSHXkxpZvFfe5aIAq3B94g7Zvmhui4nanWVQBaTOgpBm3mOdFm7yZGhrlOKWESZ4hzxZiEQR+
 xcfpbLDnb51EJmTxlCTXjKZ3hXy2UUUeL3ZfPpGc0BfKkE0XE9ir2HAuSbhwu+eTYLMiSEAz3tg
 2jL4BmCO2az90qtYzUGtH9EhQeE/zQqxcJZhk8Ar5613p8pJ3lqFDLc+HYCVRLp5pckfpXJrciC
 fam1+6r8poDTf2iuzJVLa76hATV08pQuwe59PZNV4y8smAFK/i+E5ykz57p3TUBIQm6neAeRRJN
 LftV1zqsM8YO/EoXKBgU0xD2KDxKp8ZTjrQCNUlrQs8Yd+gm5x9e/oSwntKIQp/e0jD2qAu5gxh
 jlNWi+Fqqhex3knD7eQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_022131_446649_5D7CE2B9 
X-CRM114-Status: GOOD (  14.25  )
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

On 6/29/26 7:18 AM, Qiang Yu wrote:
> On Tue, Jun 16, 2026 at 04:07:27PM +0200, Konrad Dybcio wrote:
>> On 5/19/26 7:47 AM, Qiang Yu wrote:
>>> Add two sets of constants to phy-qcom-qmp.h to support upcoming multiple
>>> link mode QMP PHY:
>>>
>>> - QMP_PHY_SELECTOR_0 / QMP_PHY_SELECTOR_1: generic logical PHY index
>>>   values for QMP providers that expose multiple PHY instances under a
>>>   single DT node (i.e. #phy-cells = <1>).
>>>
>>> - QMP_PCIE_GLYMUR_MODE_X8 / QMP_PCIE_GLYMUR_MODE_X4X4: link-mode
>>>   values for the Glymur Gen5x8 PCIe PHY "qcom,link-mode" syscon property,
>>>   selecting between the x8 single-PHY and x4+x4 dual-PHY topologies.
>>>
>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>> ---
>>>  include/dt-bindings/phy/phy-qcom-qmp.h | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
>>> index 6b43ea9e0051..befa76f8392f 100644
>>> --- a/include/dt-bindings/phy/phy-qcom-qmp.h
>>> +++ b/include/dt-bindings/phy/phy-qcom-qmp.h
>>> @@ -21,4 +21,12 @@
>>>  #define QMP_PCIE_PIPE_CLK		0
>>>  #define QMP_PCIE_PHY_AUX_CLK		1
>>>  
>>> +/* Generic QMP logical PHY selectors */
>>> +#define QMP_PHY_SELECTOR_0		0
>>> +#define QMP_PHY_SELECTOR_1		1
>>
>> Is this for the second phy cell? FWIW I think it's fine to use raw
>> numbers as they're just indices (i.e. "nth bifurcated phy") anyway
> 
> I can't use lane numbers. In x4+x4 case, I need to tell phy the first 4
> lanes or second 4 lanes are required.

I didn't mean lane indices, but instead the same numbers you defined,
without the name. It's a minor difference though, and ultimately both
work for me.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
