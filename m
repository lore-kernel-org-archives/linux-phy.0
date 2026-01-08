Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C28ED1489D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 05:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvGpLXfljmFSIOzXYbHkrqVUttDrMegWnrhLQTE3vPA=; b=tBDseeGqE9H4IS
	Z5v/Vu02yORTUupCMgRj+VD71b6y7uBUBcUBWBUvZFLD7+GXpjcaxAT+LwW/g82js83kIO44XbjqK
	JS5Zyolzhew5klcJL5ZMDhIbOoinj2BWjCDjnmHgZH+8k0JAwfoY3vVbk4g6cR7xlcBR2AKvyQx33
	JyW+GMHurjRQhHh6rPKB0P/zJZylcMuxzt2JZKWrtLnJKHjeopC30jLwleLAwSQI9ZsHse+01wbLb
	c6WBxVhcA0p9h15RlOaSjUO907hLZaZIoSEdzeqyyfRDdfTdnDBvRj8BqVkVa3XKhca5AoV+DIoHA
	hyxFNrBHBh+HzGacn+2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdisA-0000000Fxme-3vzm;
	Thu, 08 Jan 2026 05:47:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdis8-0000000FxmH-29sF
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 05:47:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084N9dj2453898
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 05:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=; b=kiYiitX347PRbexW
	LP3LObGWGubSxRYnrrtK3PDh+4Xp9oZ6JiivnRaFlWiZT6YQmrDMtlGeWaAATF0U
	5/Cs+ZClMMqz2dSEdYT5vxsFJKQWNzVE6S4kOscxJJfaDp3Tzz5gJZEfR2LOJ1rN
	dDT0JJUa6CfV/LMnLQUpdERwTe5g7/hWwDG0vcWA3Y/5NrbTfRFB960beVqwFaPP
	QR8rjsqXTkfLnUYEAFbzVD6HDTLPsJukiVy8QaBi3WOGKolQOUTp/5JgdltrpE0r
	0BCmVLmv5r5ogU6+L4UehwqWvjRooa+bCg8PGdX0NvlK3xzceh64bkURpJZxVLqh
	9TQ7Vg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhmnbkgsb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 05:47:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0c495fc7aso32805355ad.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 21:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767851266; x=1768456066; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=;
        b=blsOfLL6mTIDJl0EhJbxe+PTznC1WFKEUqEG4t7KKKsrqclJ+xVyH4N7+EluB5MXqP
         bq3rwHXgZRgdiFqJsm5t3xW289fIKI0ac71qSG/BYl7Lw9IjBQ2YkuPgC5Mmr5M3jt2W
         XBBTCwG1CWs+mmyH+c8MXZgyKTJ7u8dWAc7i+U6S40Pq+3OLrM2Z0S65gIKQtgehWKdE
         IfH1mQF6oJ0ODVBI+NppcuZi+E3EJm9Bxfs1Fq3qTLUrqX+uKN6WS2uElRfwVqe4p97a
         Yv9GPzbxRyLegPvWWPKi4viPVVoYL9G4Fyq/M2pu7p+wu7coUs7Rculdsw68RekTAFay
         d0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767851266; x=1768456066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=;
        b=rQeU09eLEUDu4cXr6S+lP6vgcuyN1bhJkpqSRDXIjFhgcyipRdZw/9ttTbApvSROcp
         a4S6WKwBwn5C4VYtCtFZBlpHdK0INBLPBbKfyVnaXxx7kjXSn3eq60ZmpbjvA/z3HiNl
         J3in2p5FWl8TqdDz/T/nfnzcOArWd02fuXXsj9PTy7yhaK5sA59Ths+cnV934Mo8RQng
         TvRoTarfOAebZlnQuhJ9Hxzk8Nj0TE/Gpj4RLF4P4AQPouNgg8MN4hYtjqJyb+vLFoYv
         uEQL64iqzLICzNK4yxdFJKIY/EbJf3QJYerp4I1E7BI122f13IDxH/UuV54kgnc0f8Av
         URjg==
X-Forwarded-Encrypted: i=1; AJvYcCUqwzt21lXyMpIlvXhxhfdgH0GxJrSyG5Rafrr2fMJZyjQmfY8v5H50A0KSfKEuexgK78yKIaUOxZE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0Vxpj7LJRE4o0yD8M24YpveITDOmxAJaZ3PFYfqqxdMtx3Uaq
	s61vSvq58lr8jQgHtJFtjlldsBIrxhMd9LJpbLZu4bBYFtO512SGa7m7RoSDUJBj9bgDT1wrvCF
	55dydjs5uJV3f5qX4S/rQ4/yD1D5XBEoIaRIy/uwCwHo1Xvldfqd9339deG5UkXShKWdm
X-Gm-Gg: AY/fxX4AOxne5jdEDJyO0okuUd+FkWcZ0SY4Vqr6MOd+SF02H67gFrLlbhsAWWN7Y6e
	2+VXawugW2M5V0Vh5sRJ4B5qCzrixuoQNghD/eeKFK1uM1Rt0RPm9fCmChMEE3apTjIpAnIBubI
	OiloojEQm7Z9ltX5IjuiN97vh9z13TUnjd9ta6IZZ4S8+7C+70yvxz8aw8sufUws2MtUKATKSqD
	dVTB67qq668W6cM/5iRJatVFESTJAsj/jlQestO6wnYrHx44Cy6MimB2qSaQzpW5tQncyYn5pim
	iT584jk+NWPjXvvxJFov4KvtpT7lN1dEGpxj6fbr/jLfnT3N9WyC+i0YoBtHiooOYrMlWi05VoQ
	H0UKWsks0+rT5eDOC1jrB1kZ/jrKtdW4gxS9m+SLRLBpTgeUQ4Eh0GnluqwUmsWSWs5PLzTKNIB
	oMLdtb
X-Received: by 2002:a17:902:f54e:b0:2a0:afeb:fbbb with SMTP id d9443c01a7336-2a3ee4370acmr47863635ad.1.1767851265592;
        Wed, 07 Jan 2026 21:47:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqtJp/dLS1vcdNRX9OcFgrl/+8DU40tksPBNVm7s8C/HiKzOWVUbRhLftVpzKQbfX0fM7V9g==
X-Received: by 2002:a17:902:f54e:b0:2a0:afeb:fbbb with SMTP id d9443c01a7336-2a3ee4370acmr47863275ad.1.1767851265083;
        Wed, 07 Jan 2026 21:47:45 -0800 (PST)
Received: from [10.133.33.187] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a303sm65912425ad.5.2026.01.07.21.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 21:47:44 -0800 (PST)
Message-ID: <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 13:47:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzNCBTYWx0ZWRfX09D6shBjD09u
 +9MSemhinA5qvsVu2B3wQuUsrh2/WytVhTUcRfMp3Ey/IPyDqLMNlxKMCz9vPvJ51JUKs0U6nMp
 MjeiHp1mviVg58kBaBegR5VYnmOrZd3f8UUJw1wgdhj5gDkMhkjj8zj+hBWhq9qUzF2Qrg94Eag
 gFjxSfEqwnH3PiHHAX2Ivf2WUnX5MyAyObkhbkjADtqAILkPcOkDTrMt2ZsJ/gpbwk15o37JvWA
 gUjz6VJKD8RRy+CTVa71FUBwI09bAklqcZHnogrAhZwETJwTaJBTfDGUumSaLGE+MVyUUrDY8EW
 BAhKUigubHVzqskt1YOsNiUro4Ckc54WwX1srP3MZVKOxOgLSVfc4ok3Tqx4e/LtZqQ0mTq8Ep5
 XoKxANjiTm98tp/wMSTvAnA5l5h6xt6JQvOqiP5heIFSucJ+isA/htGGKzh3eonOsIuUq3LKpnu
 q9EJr5YmP1ky5jhr1XQ==
X-Proofpoint-GUID: ey1Yfs2ePVJkauZVaAW7BcbQu6u-UGUt
X-Authority-Analysis: v=2.4 cv=eIkeTXp1 c=1 sm=1 tr=0 ts=695f4502 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ggdtOhnRc_DFG83H6sgA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: ey1Yfs2ePVJkauZVaAW7BcbQu6u-UGUt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1011 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_214748_564286_C75C86F2 
X-CRM114-Status: GOOD (  14.86  )
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



On 1/8/2026 1:24 PM, Krishna Kurapati wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
> Kaanapali with that on the SM8750.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index 409803874c97..cd6b84213a7c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,glymur-m31-eusb2-phy
> +              - qcom,kaanapali-m31-eusb2-phy
>            - const: qcom,sm8750-m31-eusb2-phy
>        - const: qcom,sm8750-m31-eusb2-phy
>  

I think the reviewed-by tag should be reserved as this is patch rebase.

Thanks,
Jingyi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
