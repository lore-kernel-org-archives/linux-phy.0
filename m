Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C06C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9RZEP0ZRCRGtE2C/TBbIflo/yXa+S3Reru2wngDTGU=; b=uhdi9qq7KiMMRS
	pgmGWmipBtBp3Ay1iMEUb/nW7USoiGq/j62Ihgt4tB7qp11tdy/2TSlF7nAb0v9Q7Um2bk14P8BtF
	CdxPVXq7wOOWk05eaqoHTU3mwKpVMH18q9FQiE+UOhoS7Si6F6fiIkFtdKE9IGQO2cqF/yMQ7k4o+
	wn43dBfPBI7feuvGnpGODEmQI/D65ybUkdoL4D9CvFxeGccXRvUxkbqNOo+hopE15ymW5jkqKPsMq
	+fwZ/r6QsTVyoXwcSpI26rKUkHIpCLKwTyLVJuUxSwBaJT+lOgrDLwgH8l29H7/+w/7K+sMTBHStk
	DS/FUNfBrh/Q8p06IbAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyXc-0000000E8fm-0q2C;
	Tue, 07 Jul 2026 05:40:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyXY-0000000E8fL-3gEh
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:40:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66749MjL2645714
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:40:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hhP3fYK+aJLFo/yxK3ki9QBFiA0G/X1T4yRKAQjIIXE=; b=bUWnDpcswnxLNApa
	PUSIJ7I1FGtbNZhqlAs2QI+vROlMS5snVpQ52eKy/wtSvQOvIUic0pYpVtsjGmCj
	R0rGUSH6ngVvaijeQ931c3DYSA9kMdNdcLh0dLsML3HNoDj7C7kSI9GVVg5NwKDh
	GE90lNml0nzKvt27GjXxJpZiqMWJQNLsbbAowIRC4M36pe5Fz45XmPfPfEV2dMpd
	WmbYEuRMoojuaefDYaxwHgTjB3NtCnGV8Ng/RjBjvocPA9QrSQhIKV7JE5jDYLje
	H9OWqQaDOiQf6OCzG7ieLTRZ//hvdryWjpJ3WNZ4rBM/MRV9OgjqQ5mzDi1BFWUz
	aAtEtw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88h9csbd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:40:15 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-380fe2a3fc7so3668570a91.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402815; x=1784007615; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hhP3fYK+aJLFo/yxK3ki9QBFiA0G/X1T4yRKAQjIIXE=;
        b=h96+Okh8hTyPn9wWdiloTrD3tduRO2DsBG2zWV4o+tX1DLt1KMmiYXCZgXxvo6/wW0
         +NADSxBn6l4UIcce7INbDJW5f4d4q/lrrk6UlLoyKRNLLUY8U+MP/L1Up+WgPlosHhK5
         bxzAfvsg9HAYlWyDxyQTjfdo47mA1Nq7MODU4lY3gMjtrOjRFXJl9OEwNl5vBXb1YHEd
         LRYcspQJSAxbGk9IwAMQNA+pf5HvE9wEIxQqsjmpZRZ21xRG1OtLuZL7murShLI4Z9RS
         KZFzbicfSgd4KZK0h3WYLIVwKdgKV8IYTVODiiGz44wFecdXI2e8cBJjs0yW/51UHJVp
         EFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402815; x=1784007615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhP3fYK+aJLFo/yxK3ki9QBFiA0G/X1T4yRKAQjIIXE=;
        b=FqYh4sacVF9Gt6ftsH5+O84tCuGQxJodCWneOtCgMi9xIO4lEwCMKp+B3wLbP/0EAo
         JSM5B1SEPNH60KAttx6HPtqI/QGr9ISMNmpD7j/G4tuHucdXpk/xckO30VSK4bsdvou7
         sOVF1gN0Q74rbDy+pHxzNXS/rSAJHCGl7ptTCnj82Xg6ozlCBuQSen6SQMl11bkmYNlN
         vJqDovtPzvKr7GpeiBZ6/NdohvPqZiPTBJN+Tbd+2QXwpjJUHqJzhnPbEryUtJ0u2l2K
         fZ+DspRfAEQEoYobdzSYWls8CgJ8Y4l9IGlFMB2vp+2KU5wOPs28bghAKGYqIQfqMiQo
         cizA==
X-Forwarded-Encrypted: i=1; AHgh+RoPjozu8Y0cyDJKrf4WSU7o8cSQ4UCAnhSfSp8AcgsXFFvu8rsO1Fn68ypdqhlIJiYSgFaU2dSiwhc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz8leUwJZ0q6jwZ6sJtJKAiOX/HlrIO3/q+gSOyg7YZCCaouL2
	qYOimGWAlHwm8vFoXhnEQnHBif30SYvUJjbmManuJ+bZlIFdJPBr9bhAi4aKUn8cd2ThXhMtB/d
	b2HI9o36z6tZxupEoAzvZaE/WxiW67guaIumr6oaet3ZNOlrh4y6ajgLK37YhBnIO/GLg
X-Gm-Gg: AfdE7ck1O0w7WmyW2sp3rK6BrCgJ7QvtOIXdiH0JI0fNSLfmHl2ARSGOoiBLOpo6Oz1
	+mlckHt2rpPmVM7Dgv+s8dZo0hPa5pbyl0o9KK/DtPaA5JFLva1q3nlJdxT1BVFQB0hc0wGGiER
	pvUbOu9PB5r54u6guRLuU/ZN/c9sI7vdEhUZmJrOf7ETS33ooGgeWHV2sHFLlD6z286QJzJsZM2
	AxPhNv52M2PRiBQtz97GNpeZ8qNMVc8zoPEk1n7As6iuZUgfIDXLIfiXZail7XcfDxz9o7vWuLu
	l5rHADPIATz9q2ZK6G+DP8nW1b39WHyPr4g3YWaYXzuPjF+QLRWY71VlJzebfU79qjw2jdzsf3O
	CxHkp4ZH3y16fdi95q8hyKq1yOKlFQ231VLOFYmUBWFlQTjjPGXaQEGi8gKmm5FibGj4LWin1dl
	BOMUNE
X-Received: by 2002:a17:90b:510b:b0:387:e0bb:57ff with SMTP id 98e67ed59e1d1-387e0bb5ba9mr1259368a91.38.1783402814802;
        Mon, 06 Jul 2026 22:40:14 -0700 (PDT)
X-Received: by 2002:a17:90b:510b:b0:387:e0bb:57ff with SMTP id 98e67ed59e1d1-387e0bb5ba9mr1259321a91.38.1783402814249;
        Mon, 06 Jul 2026 22:40:14 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d100b413sm451809a91.2.2026.07.06.22.40.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:40:13 -0700 (PDT)
Message-ID: <ab1cce3f-4066-413e-bcdb-13e89a03932d@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:10:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] PCI/pwrctrl: tc9563: Add API to control endpoint
 power and reset
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260630192838.GA223662@bhelgaas>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260630192838.GA223662@bhelgaas>
X-Proofpoint-ORIG-GUID: ZeKKAxdm7Aq7zQ9tPidIho-qF-cm__-Q
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX05k4nF4jbM1+
 XSL2nUsnbC8WEwOGL1uftisIfSfscZz6tN7w+SphgN8DMlRmYZo2fbn+/JK3WyinJwzhdfbo70F
 0sePa/xCzZWlCHIXn+1kO6ajLKXj+ew=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfXwHpBxvKX/2HH
 VzrVgA3Jee+KWgF96KoQD02HmHOhI0L0p9lhAUf08JvTlJWUoqJe+IHoIR67/qQKMI96DpAcY1Q
 HcMfGW1vn4Xy/Db82CEKNuaoBp0Bj64YkmZKsnDf/7atT1ylFPg3HLpNPtvFzdvb6/w1N6J5pdu
 6Zp1mZH5cXppJWCF5QHgShSSkboRb1g6wTlNJhJ6z9ELI350c0hLHFe3V8vf3rQUJFiL+j+YvI6
 an9lyGQYBRCVrX3Sy6m8BQVHSuEjKEkYGXR/T+6+8wUKe3XdZjT2CK1mGNDHRPpxaaTeFh7u8FR
 NP7LqkjJIVBTU13EhwzdL+amUKj6b1EK0feC4GtvUqKQJ0NBybSuEqNhQae0zT01wycjeuOLo7k
 D0BfWpS/nQRhsWh72m01ASQsAuzFl0IxoFBDOKmdC5mgGNEIRRpMfbBPHvCASFGg0WkzS4dmPjC
 eGJJDAiQWAXglxU3ZJQ==
X-Proofpoint-GUID: ZeKKAxdm7Aq7zQ9tPidIho-qF-cm__-Q
X-Authority-Analysis: v=2.4 cv=GulyPE1C c=1 sm=1 tr=0 ts=6a4c913f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=153GEgVumq_bsj_kQ94A:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_224017_064426_311A8DBE 
X-CRM114-Status: GOOD (  12.28  )
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


On 7/1/2026 12:58 AM, Bjorn Helgaas wrote:
> On Wed, Jul 01, 2026 at 12:32:48AM +0530, Sushrut Shree Trivedi wrote:
>> Some platform utilise TC9563 GPIOs to enable power and
>> control reset of endpoints.
>>
>> This patch adds support to parse endpoint reset and power enable
>> gpios from each TC9563 port node in the devicetree. To configure
>> these GPIO's during the POWER ON sequence, two new API's are
>> introduced: tc9563_ep_pwr_en() and tc9563_ep_assert_deassert_reset().
> s/Some platform utilise/Some platforms utilise/
> s/This patch adds/Add/
> s/gpios/GPIOs/
>
>    Add tc9563_ep_pwr_en() and tc9563_ep_assert_deassert_reset() to
>    configure these GPIOs during the power-on sequence.
>
> Wrap to fill 75 columns.

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
