Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F87C44500
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1czp+WUdcuGjESRHnHjk1ayo3U6ldBua28T7ltOUiE=; b=1BvkfixVe3Hpse
	VRDJB9UPxI5nKictopoqLnHHaMVFLoUAdrDLLceuAWUrC0fgartcOrdGTsEDTV1RuiHbIY8cvi6dS
	XTm4KH2PpQ+bNtpHjDMVCXG+VdhyZQ4OpPW4EigbgD+w150pj2v4X1YkkfV/F69UIWqBvDSIPneoD
	cwcFmDCnAKFVp1yajBRydUXPTEEZ489sRMPa/kP6dU0QsUGbD3uztEun2Qoi+y5U79m36xO/0amrc
	f4bdIG4SofhrK6Yu+hvU7TT8Ibg0PHdcJOV6HKNAyppB+RIW+hPlRXlphzVP3w0v9ij9HooTBNVbg
	URrsLX/EyhkfwZot77eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmJW-0000000D5Fu-2X52;
	Mon, 06 Jul 2026 16:36:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmJR-0000000D5DV-3TNY
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 16:36:57 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FF7hl833116
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 16:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oXxzqxUWNYvCFmZrt/ZzFvpveO7OkWrcSL3lLSJY/ys=; b=A+kE9elW43k3JhEE
	wG5rxbGyVqiu2EJsjUp4w8h255fyh8Sp7V1w75SG1Ng9NMOdpwAOQmFB8YKd5QjU
	d7HSNSGLcZaVU7dC713562ldZ6524HIU9eTjCknQ3KlIdtBzkUwj4nGhH9tCg6Ro
	rmCpvpmSDucwm88BxcOV+oGsUYlUaOFo0KNIwnZJ1O/wvfe1FeYeLcl9poOZwNmL
	RqZYuT469qkFJg9EG1djaMfkTW0CTmzC6c19Z7jY7BAgY7gfmOju+N2koDZjgUhw
	WLyE+QaDhqQvpN6lbTAdalxfKEI9w0iWF56xBTM87k5N2fLk4qexXlL8+o07U2Ys
	f5UTEQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a98hstt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 16:36:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e6cb57d25so98969485a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 09:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783355812; x=1783960612; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oXxzqxUWNYvCFmZrt/ZzFvpveO7OkWrcSL3lLSJY/ys=;
        b=jCoU48MXhq7/TjxXKHnuDlr9obii4E5CUuecXC2a7/BL95D+21ZMg5DuXMMAualqSz
         vQ7ajBbNrYvzleX6d8hb8HP6BfO5qACnq8qHCgVdJ5bHvYLqOAfgCafNJEz3AiY9sKQp
         rxQtz9s9lJ0dmzyY0iLps4wlD1LF5yoKrU9hn3WOafxatMiUT/Ibboui6abZaWrvxP87
         Zkbp2t/XTv993xH4tRxXV6Iz0kT5CB4vmVHPaVACKKuOpqslf+YqSQGfaM0ZIdBk0+dT
         r44dgN31J3Jx2ICnUwxDfhVW0Bg5WAsN7TcPikDOfsLJIvUZ6LDbnfEl6jMVIJ5roScJ
         z2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783355812; x=1783960612;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oXxzqxUWNYvCFmZrt/ZzFvpveO7OkWrcSL3lLSJY/ys=;
        b=hISdKKorQitK4uuaOd6uFypPZTT/iUTmrx1HWzhEWDpygYEv0hOv8746mJntW6VZSJ
         eXRnQGbObJZGQvKD5ERZWjiDeiL1rOr5tNllDP+o5NCYl29VbGy0ALzZjIbVeheCZqsp
         /9wVLTtV4adLVLlPHtUqro/HqfENwZ4icN/ncCmes144f4B/9PX054zvxCv0SZWy45GP
         7vQrsB8crhYUHejn7klDpC7GF1ABDiQPE4Fnj/0a3oQHtWhsxA17ydwn99Re6NYnREv5
         BBBiRXXbGLPiT3x+ZXGXrhrjMl5wflSxEf2nhpUXaSb2ZrKthu2APW76Uvunr+KDf93b
         uk1g==
X-Forwarded-Encrypted: i=1; AHgh+Rq9xg+W25XCg7fdiE4wSKr+Jf71If7UacoYOq1EIjfUZLdExnZEpiUuaIsMN1pDFeHFc0kFZaX1Ba0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZo95aAmHvTGAoQYdd8XIA+gH2ripssy5RN2d4P1ICQuGFlR0c
	Sdh3vKqAN/hOZ9WXlOl/rpj0kOhVpa8ASVK98nYY6CEeXYmPnYunU+PEI+sn4y8DDicgeEg/qlE
	SZ9hQbZeqOYSV5tjExyeM79Gn/pjMTOsuGNWhshgVhMmYch818jhdmtES6dF+BEEjIdbyBNBk/r
	fl
X-Gm-Gg: AfdE7cmC3CQ2WYgdZ8qk1oeesE5ikeDYcxMbMNBHnC6m+RJ1A2vkGXkNf3eUVoUSp72
	QKjKV8wUtif3lxoFueMJF99FRQ3XevZqT0JIWBCFTYtjzBh+UgCbaAESoiFbkRmw3Zl633wmUwf
	YKiimLXWYnTcN4I3voFsdKKLJUz8GeHvpayDGJofVOJgzae8OouHwRNgDaCaFXfGSUzivT3tG/N
	7sEVi8R5CySqc//214yHM9MbphEsMUVAYm599HFk2xpbaulp1vnYIBDYODmUfaddrEC+jjMo4xm
	IE0oYgd0eOdhUs5UyQFqx1FwpG7mMDs5w9FxDRedbsrSeIGK42D24k7QJmMUyRJmCrtr82WKQ6H
	s2glZfaMbY1GwC6BRr4ntdaTTC35OocI0FiM=
X-Received: by 2002:a05:622a:7:b0:51c:11b4:6b24 with SMTP id d75a77b69052e-51c4bdd7802mr101176481cf.3.1783355812358;
        Mon, 06 Jul 2026 09:36:52 -0700 (PDT)
X-Received: by 2002:a05:622a:7:b0:51c:11b4:6b24 with SMTP id d75a77b69052e-51c4bdd7802mr101176081cf.3.1783355811741;
        Mon, 06 Jul 2026 09:36:51 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19ce4588sm4668489a12.7.2026.07.06.09.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 09:36:50 -0700 (PDT)
Message-ID: <7cfbc3dc-c1c7-4e4d-afe4-67a25084f607@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 18:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] phy: qcom: qmp-combo: Correct pre-emphasis table for
 QMP v4 DP PHYs
To: Esteban Urrutia <esteuwu@proton.me>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-7-37e2ee8df9da@proton.me>
 <4635a665-f605-4647-810d-c9d83a271a86@oss.qualcomm.com>
 <9a203e5e-5d16-400d-a507-8b68df8eb017@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9a203e5e-5d16-400d-a507-8b68df8eb017@proton.me>
X-Authority-Analysis: v=2.4 cv=SpigLvO0 c=1 sm=1 tr=0 ts=6a4bd9a5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=F-ycRNR0_AuAsNl2EYwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE2OCBTYWx0ZWRfX71iX/h+63ehC
 1tOhvg0Sw870/cUecM6IZaa7ZakSMtc6l2SWl2f4G1c0Tr57bxyyRaZ1HJv0XhbIGShBxmZJcvp
 PvDCESvqXusL/6WQ+fFlSDEw7lS0QX6K1uWFvp6uez+gSGoT7IqhXqRznhukvLWP5LdUCt/ecmp
 0ZWsB2BGVCDcnGfg2c9Ku+zf6AWQJQK+LFJU7qSoczaiDcw7uQXLjyrb2wMqYlFV+KaQmtgkuKd
 cvDyfjbO9VtCbvPXwexYW2y6s0jBfW2mgmNLl1mrmrymd8zSXd8sSUOeQSVyvzbF15q5uVIQ/rt
 wQux7Pte22lTWva59DoHZ7YxH+qD9k1eWHEc3hjQ3xhV/0WwuTfZ7AT2upKlSNOnRc4hup6S8nO
 isbs2w5srUhIHi10juAYRPMYTipMf4kW8dAxrCPboiDib8d6NmbKyQSGVnjqRlyoe8iI22na0h8
 V/b4ByuWZX0S4tThsnA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE2OCBTYWx0ZWRfXyn6kDXH6oGi+
 xLzZFblSm3E0iMaX6HRD/GSJJXgoavFoE6M2qEQYTcZ3YyVZGrCsQQ+8Evg6HvA9l2gGdxuEbhd
 QPdBgoHIdBp+rxUfpnLD5XI7kD7ioQE=
X-Proofpoint-GUID: 4q_gfbQ3xdpvErf7Bf9sb3Za9CLy_bzt
X-Proofpoint-ORIG-GUID: 4q_gfbQ3xdpvErf7Bf9sb3Za9CLy_bzt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_093653_892182_23C07733 
X-CRM114-Status: UNSURE (   9.67  )
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

On 7/6/26 4:44 PM, Esteban Urrutia wrote:
> On 6/23/26 7:36 AM, Konrad Dybcio wrote:
>> It seems like 8350/8450 should be using what this driver calls
>> v5 tables, with this fixup:
> Any updates on this?

Dmitry, could you take a look at my findings?

https://lore.kernel.org/linux-arm-msm/4635a665-f605-4647-810d-c9d83a271a86@oss.qualcomm.com/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
