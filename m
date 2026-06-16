Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D05CD98E1
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 14:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUkSP8xCU6UP8XN2jbiisPlRt7a/uupd1Fs2WAKQzv8=; b=uH+//B9g4/NRp0
	6RQ5X0Y2MAuKQRBHRFqswW8oP6YA7Fi+LxXNuroEBFtRXSYv0U8AhVrgXui2mHTQCnVP0rwryO2Mp
	v0oQkZSGI/Z6+02ytMMAimZVYu/McP7ggcT8mrqgdfsQDh31/PTYaVTVYPx1AMkS+yb7T+4haFZHK
	7QYJE7L68wnuGBiaeCY/BCxSLl7BHdl1SOr2CmXgXAOONb5OMvRoACe//mNskNth41H7ivTcQ0NrR
	1p28rrbhuDh4mLujyoUFfQahZgrFcYyJe7RM20+IOKXyaiErTOg1+x5kGDUkFv4LU+ZUwXu2CVJqO
	FOqOX7R8CNEnDd9cfU9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZUQK-0000000Ft1k-2i48;
	Tue, 16 Jun 2026 14:05:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZUQI-0000000Ft1N-0thI
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 14:05:51 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GDxmf33894635
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1UgIGSZvL4pwGhTtVdZPQ2gca9pBIPfHY+k5s1E36o8=; b=LuGUpxpMKZA8G8MZ
	TIzD8/Gc/OynOZHiqHNAafg0ADsjQMWbJAT5GchT7NN+dHrPFIg+V6e8t4dLxv1C
	L0yX9qwRP8n+rct0c+QONr9EsMvdjQjSr9/FOMmsk8ENYZ6kU2Rqu6I4XzIOaDPM
	HBr3rfPzoyYFf2wFyDEgC6+siTKAUYacU5mUQPL9Ckx5Q2q5cnsEq+A6AEbmfWWf
	5u/hUCLLhv4MFInJH1vnCev1jMH9/EXRHd4SYbRIcgQv9of8SiOLe9gKAVOrILDn
	QSvM+A0HTxWmoHxHq8RMCo4/XEM/IeIwDHl4Yi60hGrIGjj+wV3RNwf/oOregv91
	pXlIwQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu1ep9ufe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:05:48 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6c7bdde6912so201857137.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 07:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781618748; x=1782223548; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1UgIGSZvL4pwGhTtVdZPQ2gca9pBIPfHY+k5s1E36o8=;
        b=IeqfMIe5PwXRVC62uRy9WszF+4wUdhBya3fwuFBNY620d84g29MNhWUoouL9cGIri9
         Wv9aRhmrcJLx+4d5qma9bXbc6RJbmOaWtkM0WLTwecwequXOvK+inarKnM2NyGwOI2PP
         KEwCZ1PwJvzIGkNC/+zgsb/KpiRmyYEY8pVd3ejm4v6oThn0xwGszPIIa47bhkasc6nH
         K9q1m3xWKhoo+D9XuDd6xV7BADrcMb6eXld+Suoj6cD149aSrrUbsvIKaLzgFR57Ten0
         SMKimS9rVc+MXmcl/qoc3A/63otojivaM9m9Nb8aBmpHK0wWd6m43NU3x8Q+Llz70XVF
         MdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781618748; x=1782223548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1UgIGSZvL4pwGhTtVdZPQ2gca9pBIPfHY+k5s1E36o8=;
        b=SnsVjcYFg1GNMOWpvyNEWfVgxrZijwk8vUeblNJck9eA6ls3WNCJVusFlgEUSQyiYM
         KoLbZdzfcWUddshiD1VPqM0oiPNjRWWLPNavTXTnQWpyWO9mEDAxvp+iehdTEGokTW2k
         uqWm45+XyDZby1ZhdM8rpp1epeiFftI4nLy1fzhzO1IZuyiIdafiM7si0XQud3u+kBZg
         l1ZqIi+P4harj7jee0Jq1AZ11GE++lI7MIU1jx2ob9LW74Ozw4ND9n0q/zLTYQAxFINB
         J7HY8AMh0QnoZTnzNKrkNhD4oMcQqSN1xB4E9wdhTOwGrGzOjIujji/BwwVhgIb/msPk
         M/RQ==
X-Forwarded-Encrypted: i=1; AFNElJ97it22fHOoaW1dYE4SLD8kkZ+UdKTG39ThLp+UTJx5Bv2gNjSgDJj86hnk5AsbzeU74waHnaaa6lI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzOx/0EycGADbq/UVe96GX7CxO2t/d95KbyG7qOZEbYeXumxSa
	wBOi6sH2Wa7mdVMS4Vvbmysm8EQCys9VSBvlUB70y7DItQgcCnDdOaD1RBVi4u9TFA92Gapqdch
	7X1jwmc/ich3kG7he7cIhehzur0Yex1OJQHfwrvcqAr4nzbgGBTMyw1+RZWe6pIbsbz71
X-Gm-Gg: Acq92OFvtRDXk2FmN75c57173X/Dt1Z23Pgzsb8TC09LZGr3xNA/ZXFeHjUVpAwN/Ya
	YpPR+gvEVeq+bJC1B81DCW9uyWrIRG+PzUcERVaPjWzgHBEa5kFkmghyQmPC1gd/nJtiR2cHt7H
	SzBZkq2Pd4eVZQ1QxNWQlbYC5ZytVZxLGJvKfWE66EPZMGjHxdW5h3xVXnFq7TN46SKMX57C9yl
	OCUT8ytE0fnJl5MgiQIlyg1nwWe28aPJhmAWpw+gam8bvEtmkKGEitk4F6Be/OcaAony4rHGfVn
	sySkw4Xc+DFeqLH2S1B73Zxr//RNDBNR+1R6NjgbAU2SKmIy3qzM8o7SRrcKQy2hX4B4lKXiLBO
	XfyYpantZgHG1UfveGZDFjRxrlJ+9xvZQjzKksy3VhYaXMw==
X-Received: by 2002:a05:6102:f07:b0:631:2be3:b6e8 with SMTP id ada2fe7eead31-71e88dd8cd2mr2916780137.6.1781618747861;
        Tue, 16 Jun 2026 07:05:47 -0700 (PDT)
X-Received: by 2002:a05:6102:f07:b0:631:2be3:b6e8 with SMTP id ada2fe7eead31-71e88dd8cd2mr2916747137.6.1781618747389;
        Tue, 16 Jun 2026 07:05:47 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfe5116f409sm620047966b.23.2026.06.16.07.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 07:05:46 -0700 (PDT)
Message-ID: <1bbccb16-b91e-4116-a4cd-213a46978fa1@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 16:05:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
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
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
 <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
 <ahk57lEoWQtkGsJt@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ahk57lEoWQtkGsJt@hu-qianyu-lv.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=I/ZVgtgg c=1 sm=1 tr=0 ts=6a31583c cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=w-i5jriU0KAIvmwf_0wA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX81NEAVnLB2nz
 Gv0gcygMGs2XYWurNJ7n795iLXE3owBgrXmWyiwQEFCgKd7ipsKkXOSZV+tSJ0qHcQxoXnorZC1
 vtmllKOFkx3OfAiPVwCYuZq/OdCxjbo=
X-Proofpoint-ORIG-GUID: x8Snys44T_QypfQSb1myPRLmBvfTQc66
X-Proofpoint-GUID: x8Snys44T_QypfQSb1myPRLmBvfTQc66
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX+gt/RT5TTSVj
 pvh9mOWlLz+/xFSbS6SqBmJgKTjNfm8/K+Q3+kbA7NgMEFjBGfisOaRgoYeEUuFJIv++tOzGXsL
 ZJ4T+WFP1VaYHbxnsm3LVHjv5MTqPRwlrSW2c8mGXOGT8XZHk0QMC4hfTOD8iYKfQIKIqBBLxUc
 83WvCBMiZUZ8kKUIWZMbqh7fjC3EWhS2NL1uG8M4aIvLuywRwr+VPw4Adqc2dtJvOrrv1ejCO0Y
 pbym6qkQrdEFhWBsXq0y3byM4QszfBdw7ngH3Q75c+ImaPtKj3KBfJUkm9rRFiCQg7yoBNzMd7v
 8Be3x2ui6Vtx5i6cZV5W2OjwBp9QW5bVZxEoHVfl0AA/ZxBHso0Y8xMiHFINkTTUWEcYYNHqI/v
 tXfnY19uZbmLviuPmhUUuhFO3CaH4z60SxIUBzBVRa/raNg72im/h+yIJYqoPda8RV+6G3v3KB5
 81GSraIRQbc5kgBNeLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_04,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_070550_505092_F53E459C 
X-CRM114-Status: GOOD (  18.16  )
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

On 5/29/26 9:02 AM, Qiang Yu wrote:
> On Thu, May 28, 2026 at 04:48:24PM +0300, Dmitry Baryshkov wrote:
>> On Fri, May 22, 2026 at 04:27:35PM +0530, Manivannan Sadhasivam wrote:
>>> On Wed, May 20, 2026 at 07:25:01PM +0300, Dmitry Baryshkov wrote:
>>>> On Mon, May 18, 2026 at 10:47:16PM -0700, Qiang Yu wrote:
>>>>> Some QMP PCIe PHY hardware blocks can be split into multiple sub-PHYs
>>>>> under a single DT node, each requiring its own pipe clock registration and
>>>>> DT resource mapping. The current helpers are tightly coupled to a single
>>>>> qmp_pcie instance, which prevents reuse across sub-PHY instances.
>>>>>
>>>>> Refactor __phy_pipe_clk_register() as a generic helper and reduce
>>>>> phy_pipe_clk_register() to a thin wrapper around it. Similarly, extract
>>>>> qmp_pcie_parse_dt_common() from qmp_pcie_parse_dt() to hold the register-
>>>>> mapping and pipe-clock setup that will be shared between sub-PHY instances,
>>>>> with pipe clock names parameterised per instance.
>>>>>
>>>>> This is a preparatory step before adding multi-PHY support. No functional
>>>>> change for existing platforms.
>>>>>
>>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>>>> ---
>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 76 ++++++++++++++++++--------------
>>>>>  1 file changed, 44 insertions(+), 32 deletions(-)
>>>>
>>>> I'd suggest splitting the Glymur PHY to a separate driver. Otherwise we
>>>> end up having too many single-platform, single-device specifics which
>>>> don't apply to other platforms.
>>>>
>>>
>>> I don't think that's really needed. This shared PHY concept is going to be
>>> applicable to upcoming SoCs as well. And moreover, the split won't be clean
>>> either. We still need to reuse a lot of common logic in the 'phy-qcom-qmp-pcie'
>>> driver and may only end up keeping very minimal code in
>>> 'phy-qcom-qmp-pcie-glymur'.
>>
>> Then splitting makes even more sense. Let's not clutter the existing
>> driver with too many conditions and options.
>>
>>>
>>> If you are concerned about the file size of 'phy-qcom-qmp-pcie', then we should
>>> move the SoC specific 'cfg' structs into a separate file as that's what
>>> occupying majority of the space.
>>
>> No, it's really the 'shared' part.
>>
> 
> To confirm, are you okay with some code duplication between the new
> Glymur-specific driver and phy-qcom-qmp-pcie driver.

That's a necessity, to some degree. See e.g. qmp-combo and qmp-usbc 

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
