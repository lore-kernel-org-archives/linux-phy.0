Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D15EEEF33F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 09:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnwJQUnKgHkjAskxTHOmjAHAe7qyTE4+89W5UuwMIy8=; b=lE5akiQVqqkv/a
	OOfeYbLmEBaJawags9uOKyMdhIgLdOYX68FONMizt8XViLX9EEVma60Jl67bXsKqwK/F+9c9xovhH
	HJ8VyMS8EhwjlCEO4B+9vkMXmztS+BbnxCiZZCzBx7mUzk/U889PwOjEyn2nnJeHKhRqXMGzwVPq9
	2+s3eNgxMY9HbrZOFQmw6W6guP/FjL+DBuaHQjQmV9GlGOM5Qp+4vbmpazh+ehKm5wkXVVKF3HhSl
	xTcxhw+zhp9S/akdJoXOiWu5qPw91ajmItbokTzcYh/phcHqthrVtIKtLk5mwwsHFGfRVztJ4doIC
	kyfqN5UzUsBPQ/9DIJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4ng-00000001LFk-0j11;
	Thu, 05 Mar 2026 09:15:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4ne-00000001LDn-37Sr
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Mar 2026 09:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=; b=pazwcVF14Pn5lA/8zRYsBAMzjW
	ER4RZ/EIy2IjeCLQdsf5HidRNqb9P5B693LpXaLsKRFObw99par0zhtG89/+EIXQN7VMaBWcdH4ZQ
	J9N0qFLRJirm+gpm9TJrVvXPUm/GybQJWsbYpUOjxnBgYIYhHabXrVzKNWFpCPBl8gdIhvS+plS1K
	LMjZmLQDy8F8xVsOmCNi1ckM+sVZ5QUpVlQcIjk84L+kHKGWZGeuadBUF1VbenoA+bjSKOJq+jbmr
	Hs/AE3r0as4f5T7UayS5j+Nj/AdAhTZCV5WP9n1m2sUSLP1IqNekQnO6rQj7CKNfZzq0wyXJiKuNX
	S9ABX+ag==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4nb-00000006If9-2YVG
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 09:15:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258fOPL2665108
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 09:15:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=; b=fQRkPmX+D74BHrMb
	asyUwF1awRSU41+Alv6Wnw7Gs81vmURRSipvQe26gecP5AjxUQs2FjH2evlpCBle
	EvlJTGeq7/hZa7TgbL/eiwIfLm9VDQ84HkWp0PDa9k8zC3mFxWdX2oUrXIvDSeUO
	MJlRb3hfiqoNxb4lqLQBC5yk39pNljrdNKN9SvZotseq/6rNLYILsr5slIzaGT2r
	CXRqeu0rHZQRIblzagGnKAQ//HjjGknA7AXeqY14HW8GLv/JQd3X9Okrf7xmxJF5
	2NdQ/R4sUdq3+kMqXrOnJ6N/9Kl6X1z8XshPF4tixarfRUFzzIjQtTlkBNy1zXbb
	lHd6eg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpuhb23mw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 09:15:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899fcb63705so19614616d6.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 01:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772702112; x=1773306912; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=;
        b=K92E+J72d4YdgT8zwHgN04tiBU4GImQn5Mt65/nXbxPrEcy+zs4BlQ/QZyUyv0s2At
         pwNZxUi8TrLT1j4dkyLPqS7c1cn1yeiSrlyy5w8Xr9uTGJ2OXJdTVLEjuLqumeLwmJSQ
         TFoCHo+vQBL79HAXeTfs7e+jMV4MSHvZAQ3OLmRp2drI88xiz0R6Xz2BMPqrAxOyaDc1
         WTyYLdDahDPt+IAatRJ2Q2pgcgPMrAauFkqxNV/63Ge3ZytQHi69RzBUWBsMrJqDSs80
         b4jaRHH2WOSFHeTJ8p1o1R5ivLMgNKfX9Rc+5SEr53wfopHQ95fkD48jsbPiJibk1aaH
         h19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772702112; x=1773306912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=;
        b=cHWCct1Bdf0zWkaznC80rw5Yy9Sz8MJdX4y9e+GZL6kNwm5JITehliE054/33HPhH0
         JKONBdTgVRdVSUYiAmO/MkPQwmHHRh/XrxQI4Hv79dAM8h7ndcr0Fn0jlUdj5lkhdunV
         vqsR15o8EqJmF1KreDdI6ZKrfAHlCdkCuQsKW7JqmEr/sp74QU2ObwOUgXl+D8z/x8CQ
         qC8AA35bw55lMYy54Ps2/WFFCo5QGdsKz33niJhFyLKsGwrXO0UXgBCwXraCREAusw+e
         WeZg1RxuNCbyC4rzLCUJHFIKyet++rdpotiEgqppACD0AGSMkcCfD9Ct6p34k4bMJ7Ei
         iPNA==
X-Gm-Message-State: AOJu0YyUW3UO45Er9HcMWVTm8q1jVRdli89uwFgQciXIJWcgt0prU2BK
	8uKbL79yA/M0tL7mhkh9zyBdvTO3NO0zwuhiaQewBZiKj4JAxKl2TJr8OuW61aYQ3mNhfU0KuLf
	x4oSlTB1WL0mPgpF5Q66/ZoJOx/F575UUAaAqqwFNTdsLiwqnTFV8AZ7xa7TwptIOXxxy
X-Gm-Gg: ATEYQzwspNDYFJK293Pe1Zbg0D+fkQTJgVvZy4D5ZISOMR5XrrS8YS5NJ5zOkk9f35J
	H94cBo9bkx98K/fwE7FHO7Mc6KN+m2kxNYi5H4Jac7vABRIr4JslSQwfpe4LG6HSY9/YQbp5OvK
	VZe2iwvhRI0TJyFHnaRpQ5ILzWJdn8r6ErrY3eaPNYZF9iIt7nr0JcsErgxm4iuPDk3qc1X97tF
	yosmUFzmLvP+CT01lNVaIxDnxIyo794N6DtZyLp/lVBdixvMIoy3hwwC5fqccgZddSVkM1vRr6b
	fiOqqDB0LINEh0cLxFJyeQtuc37GRfBR3x5nHHWJ2HntKBrWw8U8IQ7ZBwLSDaJfEU8Xausv2es
	pSkkkLmulpaUpTk3tBHeyQJARknpBDpUTXyquSestXz7wPZ79dQoXNDMnKrcY/Xfflg1BMftk2M
	Qt0EU=
X-Received: by 2002:a05:6214:4842:b0:89a:1720:4c5f with SMTP id 6a1803df08f44-89a19aefda8mr48644586d6.3.1772702112232;
        Thu, 05 Mar 2026 01:15:12 -0800 (PST)
X-Received: by 2002:a05:6214:4842:b0:89a:1720:4c5f with SMTP id 6a1803df08f44-89a19aefda8mr48644286d6.3.1772702111839;
        Thu, 05 Mar 2026 01:15:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae666eesm878784966b.35.2026.03.05.01.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:15:10 -0800 (PST)
Message-ID: <19c70059-ee24-4b16-8df2-d5c9274ac6c4@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:15:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <ebee2fcf-9069-4a9f-ae72-86f4471cd4f3@oss.qualcomm.com>
 <20260305091336.ls3k24ieehntxf4f@skbuf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305091336.ls3k24ieehntxf4f@skbuf>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX5a3wmXbW8BWt
 4TEt7y66AGPYXKkEIb9UGNpqQ2QsG6Z1NmE4ptUR5JksZdta0Fl37fKwAFeTV35CgzhtjcLsaCi
 u2IVJjJdDVgHnOcScq42gtHgNxJmlaX3EyGyvIDIk7DkWexx0gauV3uiLfgelrgmpJ/B4oMKim3
 Rs77JzFa3ICVPLCNoQRWu9mylfazq4SOvrn7WLhDLgxTrIYrOfDE1xAdZz4C+qQc4F6BdL3MG9Y
 k3DRAHJEF12lRsTOkPH7U2i6h8d+elLi1rJOWd3PevYI9ExkwQ+foxmCR2eeZqt8zWUfHxpJyzc
 rLdyVkpo/RkDzJaq318pWLx64icgQTNRiYNw6FMLgDww0DP84GCEG56f/j+GBwL09ssunUDzIcK
 9Zh2gvd7vZ+q09U7JNHulgdcdatt2j5j5Zr49MSGwslAlXtHBJzWak/7YgjtGr0FxfHNGvDHpzg
 76Ecf7UBAbEq7XmP/MA==
X-Proofpoint-GUID: IZhHQ0K06EK9V2VJtwhMcQORf2cN7ejg
X-Authority-Analysis: v=2.4 cv=SqydKfO0 c=1 sm=1 tr=0 ts=69a949a1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=6df94im0sWgtjZpQi0gA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: IZhHQ0K06EK9V2VJtwhMcQORf2cN7ejg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_091516_202858_8D0F162D 
X-CRM114-Status: GOOD (  12.33  )
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

On 3/5/26 10:13 AM, Vladimir Oltean wrote:
> On Thu, Mar 05, 2026 at 10:11:32AM +0100, Konrad Dybcio wrote:
>> On 3/5/26 9:51 AM, Vladimir Oltean wrote:
>>> Hello Konrad,
>>>
>>> On Thu, Mar 05, 2026 at 09:39:35AM +0100, Konrad Dybcio wrote:
>>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>>> index 55af015174a5..bdfa47d9c774 100644
>>>>> --- a/MAINTAINERS
>>>>> +++ b/MAINTAINERS
>>>>> @@ -10713,6 +10713,7 @@ F:    Documentation/devicetree/bindings/phy/
>>>>>  F:   drivers/phy/
>>>>>  F:   include/dt-bindings/phy/
>>>>>  F:   include/linux/phy/
>>>>> +K:   \b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h
>>>>
>>>> Would looking for the devm/of_phy_ prefix followed by an open parentheses
>>>> not suffice for the 'has function call' case, instead of listing all
>>>> currently present exported functions?
>>>
>>> This would maybe work when you run ./scripts/get_maintainer.pl on a file.
>>> But I would like it to have good coverage on individual patches too. And
>>> since the devm/of_phy prefix only matches when you "get" the PHY, not
>>> "use" it, my fear is we would still be missing out on the most important
>>> part of the patches.
>>
>> But that's just '(devm_)?(of_)?phy_[a-z]+\(|includes.h'?
> 
> Yeah, but what about the networking PHY API, phy_start(), phy_connect(),
> phy_inband_caps() etc?

OK I wasn't aware of that poor namespacing..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
