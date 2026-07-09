Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1296C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 13:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyJrZoLbrM40/doNGHWmw6tPQvN+ZeYVcii4bixcpUs=; b=oBqvAW5HB4zybE
	NjOLxtjlk9kvdp8XHELh0qqjDsZj1W2KZuh2EWbRi35EgseIWluXPpruFoTm7KbVLJEksSWxWz0sL
	hcxZvYo53lUe90l3+c7UkziQxbjFX7pDvz58txDX7O4UyjJiU1CydVu5qKkHz9nbW4MO3zFeqv/xX
	cU7Skpjac+F1muxgF9tiVw3i0b7CBPvnM5eQO8fkJS1aOACV0lJCnUGB7ZOSUyiEQa2Z0xOoD9VRa
	FI3Gu9CaqrU/KAXpWFpHqqOBnh1YWb56uvrA8b2cQ08lqZgBIyfBXfNij+Sgv41f9aXOFz62X0WkA
	BuBeX+GcgUpCKwlfA4jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whofh-00000002X8R-0mmF;
	Thu, 09 Jul 2026 13:20:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whofd-00000002X6N-3jjM
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 13:20:07 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669BNNHL1628516
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 13:20:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SfOnLFZyqQTqLo/hudr5az1+iraPV0eym3RgxngeWko=; b=a8ob7Q6VZXWIFnhU
	PNVSutWcXNGnI3MQOV3ZUGgE9AHGqTeh9KORcBTyq771CENlkIPEsTdpRtg/FVcX
	7xI6N02YJFvGDVO1wkwL9HoImGdvS2VwX13qANcZqLzcMs7CAR3awH2Vkjp2PAdT
	I50Qbe+i5ypeLpVY8N76d0VpdWG7TY6LcPw/v4jKiOtVCkWPPXY40ho5MT6VOTki
	H/JTuDJr5ao66vYlHflvQfoqHQ1SYkSd6rw0xXcezIqAluFwVL0XqXetyMg+d++d
	vT1wpUPyRW6ZSct8wHXvIaf/nClXJiZsJqJxPDR0n3WrPg9UvjvuN7c18TIuNdMz
	ugRLRQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9urvuued-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 13:20:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bf9df2eabso2257081cf.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783603203; x=1784208003; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SfOnLFZyqQTqLo/hudr5az1+iraPV0eym3RgxngeWko=;
        b=DbJGgke0x78t0CQDTpXUFs5ZH/2KxwKPmrPupPWahXvLnnI5PlksSvNx6vKVsIq6Dm
         wdD9hWMXU6uJXau7YehU8k+Mhcxwg8DWf5sMeJnn4FtMvUOl0/ZhHOFdKZLPb/2827X+
         B9CD7WuU06DcSSkGAUTC9tZDKsvhYTwMr21OjAuLN+aD5fY+ufI4sD+EJobjTmW43A/+
         gGNjrErBZUuhlLnQ1lxnJ2DNdrQpAs66Cid1eeSS9x7GEF0YczZKi+UCXaHaJXArd6j8
         ZgKH0iYRzubIK9ra6XOXOZ9t/gJjRPk86zEkTrtDQvJINKnBXb8cBmrM+Q9/aRWgqVKZ
         JBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783603203; x=1784208003;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SfOnLFZyqQTqLo/hudr5az1+iraPV0eym3RgxngeWko=;
        b=TZHouHa4YR5aMsUw3mQhoHbRIHP9XTyVTqoUnwpAnAgZlD0e2+mPumvvzya/aButwV
         bNmNd3uSk7pwRzDViz9IKi2LqJcfT/C8LTp2rj5VsvVjRxm1byXtJw/bdnG9Q5OU8tX2
         nQ5vRFMcqC1f9ydpi5CmKQaeNqfoYStiUDQCImpCH2t9IX0LUchVP/C6ahUgoFgiOuDe
         W4Cqs8SwzJOpGMnTXnoO+YJ+v1eLDNU+6xNDKm9TjHxnCPXDYQTkabaoRmbryC94YiiQ
         KClrwyNxzvYOsoJ6G6sVO4TsYdPRQHtc1D0DKlX9PAz37WeFnRlwWpczE6OAnpCGOkGr
         8TWA==
X-Forwarded-Encrypted: i=1; AHgh+RpO6emu1H9yppruVS3EX022Zv0j4IMfW61G+n0hdV12gf5L5tVEUR959A4LGRnPPkdsqKFhMEVbADs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAu1p3S3OLO8/ayKf9AopRRzyTrUYK5Kpd3vQX27nNrG5muzeO
	ygVrRyeCLDFy512vtisI8PmPbrqazl/ly07lzpKCM/SP5g0GjL8qI853PbWVmgF+jUbSiVOgdh4
	CLPSDfA5/H03T3gfHr02hEjKR6/a5Ml2MRo3gIXvCOuZ8MBZXcu1C/Y4tLsE4oKri4xWS
X-Gm-Gg: AfdE7cnQDLrVHJXGQYy8axngofP4hDoQhmUBPDZTA7wimlxjZv9CBvSWx0Pl4xIEfER
	TZb3AG2YzHOyVHFVXglA6tCUVZNihuX/ZtV8l+dH5Xbcmf/UU7QDa6/nrnc9N/sFXZzwKc9S6tz
	LxMToy7LAIBbJNsYAZiuK0/sGs15X9AtykNAJpSKVwpxwJwlHSu9yBg4KHluINsXKMQ0uvOkNjI
	cVvkiBK4tpKjAtQpjJvsdgYk30PuU770/DmnUbRHOl9Oz3e7KtBFb1f1vmJY5gRLi3Aez9c/exQ
	5CqHR3/4ouMbXLE/fhJBU5QO7cYjE4sAlvWtXwodtIH/yOi4oMD92KAtEMk6+G5RWz50CKX77iM
	ZTMaiDp2Psz3vhG+BXpJonTDS+pD727/dUvg=
X-Received: by 2002:ac8:5a07:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51c964106e8mr34227621cf.0.1783603203384;
        Thu, 09 Jul 2026 06:20:03 -0700 (PDT)
X-Received: by 2002:ac8:5a07:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51c964106e8mr34227131cf.0.1783603202833;
        Thu, 09 Jul 2026 06:20:02 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15df03dccfsm159720566b.62.2026.07.09.06.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 06:20:02 -0700 (PDT)
Message-ID: <814763aa-d102-4b1e-95aa-01dad1bb3c0e@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 15:19:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] PCI: qcom: enable Link retain logic for Hamoa
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
 <20260709-link_retain-v3-4-81a9d187bb61@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260709-link_retain-v3-4-81a9d187bb61@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDEzMCBTYWx0ZWRfX68+gsJhzk8AR
 RDy/rahLkxyy6Qo22o107gCjTv8E/ybIOxm0uLcKXChVYr0HWZcIXUHGcV6K6Jq0Mwo+gTyH7iD
 R6TssfVWhEs5ek/83n9cRiy04Ead9xc=
X-Proofpoint-GUID: SV8i6PGohQeAZZnxxqxYYARPGTuQWEAX
X-Proofpoint-ORIG-GUID: SV8i6PGohQeAZZnxxqxYYARPGTuQWEAX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDEzMCBTYWx0ZWRfX+aJgF/0Nh9hU
 kMKgnPBTmWyeuPqy0UyB6VvCawtQ+OXzKyBJYhqTkWbA3cHKKEBGiqzjvuYWtC0tMZvXj0fX7lJ
 7w7LIguC8DlX2GHh4xOYxmLwP4mGBdogAn1CHVTPQ84n8huusesCvXKdoQXrW7SbrCiLCGjwdaI
 UDDonWfuPulCgI9/l8UuCVeVgoTWc7Zum10WYVTm9uIMEO7Ivr/HliJJ1dj0VPGyFB+zeEEsYN9
 HPz3CVkVwjBJ2Go8FqwysqqSymR6pLF3O3QUdUPXBXM4fm6COssPgxss/f3XCvkYXrGU05DguMs
 +yNQOzGuJyS47IOdOTs+i69crPwblDvpbX4BLFE8lPtnFs8Cxrr+LyTQhvIdkjcghwFJbkYzHLd
 cSMKwwep54d3UfreWCXnLPzE9tjvCxnJrCE8uNVtyOaR48qoTbC9L/Oto6ql31IdiTshFz2Ga9K
 mL8VDP2jTCqRV+vpcng==
X-Authority-Analysis: v=2.4 cv=H43rBeYi c=1 sm=1 tr=0 ts=6a4fa004 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=6pHcnep46kEejBPVP2gA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_02,2026-07-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_062006_049691_7EA878F7 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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

On 7/9/26 8:35 AM, Krishna Chaitanya Chundru wrote:
> The Hamoa platform supports keeping the PCIe link active across
> bootloader and kernel handoff. To take advantage of this, introduce a
> specific configuration (cfg_x1e80100) with link_retain = true and
> update the device match table to use it.
> 
> Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
