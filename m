Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31B61C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eA5HoZEnfNzMYlFn+cPqDfEABrgkAaw0Hd7QlpfBK/8=; b=PYOS615QsQlMn2
	1bNW8ros3/SKZDcHgPPzOCYmhaHHQJa25vBVGdOWb0hzpEH7Y1EP6/eyLbHFYndoel30JgbJZK1xz
	PeGUIhjery3F85dOx10l3d2I9x0wzAauBoNrRRFIEbKk/jEHbicgQMDP3Z6IEO9DUFc9eQI1G80nd
	zo/3C61sN4jY1nAE4pK2oig8FEEcuk9QEobENuoPAoNfJ4SB4azDaKhhS+BECrTudA/bviZ+QmcHL
	yejPOlkttA55n7QFzQBTIYMCzhJj/JMzw9fSlV7APXj6xxasJ/7LqZ4eR6F/9dgCjJWrvovsIQtdS
	pxy8YiaG9eXIGgj/aTJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyGd-0000000E7gF-3ljY;
	Tue, 07 Jul 2026 05:22:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyGa-0000000E7fv-2f9n
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:22:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66749IRu2658317
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:22:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uz7oXNCfrlOoGMhAm5/uW2kJhx4TLmOTtca8THmwAXs=; b=jVak5XrJF8UTqII2
	2wV4zicP7nMHMmWN8O9uOWpCPLgbM30BMFwSfOef1wXQnOqZXGyACOlQUW34CBqj
	NX21SMPjKCD59TblcAUkFlAYvMiXvOAl7nsyM31fG86Tz37GN/n+XneQ/bjvWQ9m
	XAq6qH+dzIwY04IPJR2Umwqn4bTjKJ6kVe2UHnVrFbNlt3OVt2un8GoGJ7+Or37S
	1hBZ+Jjr4z6ITWHl/N67P5SCy0XDbbZyaiFHw7tztDAqbvlgJC/PwnerAuuTvfSw
	86Q4qwPJt3AnFKyHa49hs0k3wC/BWSwBz+FY06L4rbkPamtD5c7OONivXulLJ0vm
	tj+0og==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3r467p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:22:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8478947e047so7312229b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783401763; x=1784006563; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uz7oXNCfrlOoGMhAm5/uW2kJhx4TLmOTtca8THmwAXs=;
        b=cNxmsBLT6D2vXhkCLYSa53UczUkiheVqHa96x7OaGZcbA0jlAiDE7bZ4+5ZpE5JHs1
         5e7gWu7ze3Mq3mcancJ8yC4YRKm2vQDoYFh2x7x/uhywFIjXzuVyoJqIz36ad9Vby46O
         Q0fmj/gS3apuQqLfS7Mq3S/shOSs1W37oJEJui4aT1gvASXOFNJnOL5IA1KQ80hp9E5x
         iZusRKwwHZ46bipGx+A1lxLqyTG0SZbvQzUyy7LDYHOsJ+bm1/rvzjyT23vSpmfsjDAO
         w7EyuBTaXxnOyBxXmmyYT8qlUyBQMJoCO4E2RrSXHz9LzOCkTc/BbOwxuGKc/8yEB6F3
         SU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783401763; x=1784006563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uz7oXNCfrlOoGMhAm5/uW2kJhx4TLmOTtca8THmwAXs=;
        b=fB4FUv7v17S34jjom7v+QXEuNg78GTBkK6Wi5Na9pnj0NQ+APd50u1rcrhqCPgSH+y
         vSOhDXbZIJeQ+4V5n67pGgrm37tfyioBzb2saz+E1Kh8SIa02cKu83Ln6JRzGW6gYK12
         7LzRSuq/rOfgskHzeGnvFiGwSQQEQVh3sUW8g0XaKZh4S+EdNW2cHtcUyKoSCRvt30e7
         A265LrRLir1CIS+H7V+J0UIO4+De4AkALhKw0NB6Cs8mfL/+lOjF00cIopBWS6KSuwv+
         lWDZz9d7KDWmrt1Y74wmEBt4GVx6vwA6mqznIozBaRHz1bYemht4hQivchH3sWvGj+Xu
         S37A==
X-Forwarded-Encrypted: i=1; AHgh+Ro03n7ZmXxPRb2vfVI+QuPN2d5eAceAOg3wcMnMifFhJvl3/vQ2EbW0G7Hr0T2AV8j7fuXsH9T7mAM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw11CZR/9K+4gp5gjZO5rWbXK4ixIAmpUifQzMc2dYBsRHPkluW
	fBTHgaukBrOgfzxQgmFoJbJe3jBfgucI1JHI7EfIzCeDVr/3aLUwmyzYGE2EIDFJ07qHFtn6fi2
	fNnjnYUwIzG46RjctVaggrU9PmPv2Nhn7+MuY9lu4jYCq48hu9tE7yPvJAcchCi5jbOQO
X-Gm-Gg: AfdE7clQAkgI4hRV0Gwegrk49M0Ux+olN0DVTtJHaSk975gH9z3h4yjtZFa9OeefF6U
	6XucfxRBNgjWmvbEvjnSwKen21K9PEIiMebBCKraKWyAFwxeQK909XBwNZVYQ44LlQxDCq2s6dY
	+NskRjuuSVGr33jTfe9ThHevwkwOY9xfGIgR5azvLggCAPM9Ow4bfOfpRdAi5xrqZz0v2rCAXhk
	E7F01EKYEpvGwPjP5K0++lh2MARrWQC6dRb+mNwif/U/JNpyyODDR2daJxNMtB2VfWPQm2UlFcg
	dWxewrUOqVJY3RVk61Siq6LG0Y0OtugzZWAXPs8CEJWOhkATWfzNetSxrc2GzEG6MRHO9UTuF68
	WTWdx7SC1vSFczeNCwLqNGK/Esr2uBrMCmZW7xqEWsxdftinR5caS/+wTzfO0HgBnVSCBrcZzzM
	TaoMTO
X-Received: by 2002:a05:6a00:234c:b0:847:8107:1bd7 with SMTP id d2e1a72fcca58-84826decac2mr3441060b3a.53.1783401762575;
        Mon, 06 Jul 2026 22:22:42 -0700 (PDT)
X-Received: by 2002:a05:6a00:234c:b0:847:8107:1bd7 with SMTP id d2e1a72fcca58-84826decac2mr3441022b3a.53.1783401762139;
        Mon, 06 Jul 2026 22:22:42 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6d7a915sm4707164b3a.44.2026.07.06.22.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:22:41 -0700 (PDT)
Message-ID: <27b3c359-d8f6-40f8-8da6-48fa6decbf36@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:52:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch
 node for PCIe
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-8-e1a721eb8943@oss.qualcomm.com>
 <2efcd4b6-0a99-4bb2-b428-4cb4805c20d1@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <2efcd4b6-0a99-4bb2-b428-4cb4805c20d1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfXwqV0HlvImy8u
 B2siye3aEqCsVcjD1b1dKjKr2hFqyF4E/ZKVusM2jyZ9JvxovNHrQTqYhRjf9kM5Uu/ncckPLHi
 /WEsuTrayEEArEyVj//p779zygvYeCbnAwThbyIYwp+3DAs93vo0Y2NVzRh9ku6eE9a9KPYC/am
 /Pp7HssuPEnABrwU3ctMgheC2WIaNOHHMCl05SqXJQRLDh6PAgGIfRjf330KrFz939f8RQrD15N
 dDAiImPtmiE1yG8A3YWvmWhdvaWSVm2+U4V9PGVt979m3yqbZlvuodyCbjd0fUABvOTKs4V/6Hu
 S6P0OGjOKeazpCiQUgcN1wqowtLjd11bvFIBtjcoPUzctqL6kI/zvK+qI7AVmklPQ9MA6rzYOx3
 QTj+Cv3/7Z2ZlY8ftilPzyAfxgKCz9ZuQcRXJWBimSZNXe4QxiA4gGIAcpLzcnAhAvUiOqZUPPf
 0ZnDneZlEWlyps3TVKA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfX8JcW7eG/q5Sz
 aqgaHyOAJUDZQKmFlxLKRlP0woSB4SPmPEEB77sv3an/OykVLzD0fgk7xDiQ9zL8SsSa9OGf2vE
 NjXWk2XcF5dQ8snUMMbSLcC9cqgjy7s=
X-Proofpoint-GUID: 9fK0enmyQQCnxxT73zM2e7H0i-f4N_vY
X-Proofpoint-ORIG-GUID: 9fK0enmyQQCnxxT73zM2e7H0i-f4N_vY
X-Authority-Analysis: v=2.4 cv=OKcXGyaB c=1 sm=1 tr=0 ts=6a4c8d23 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=S2spThItiBpve86ZF9EA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_222244_817294_61F0D3F8 
X-CRM114-Status: GOOD (  13.96  )
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


On 7/1/2026 4:05 PM, Konrad Dybcio wrote:
> On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
>> Add a node for the TC9563 PCIe switch connected to PCIe. The switch
>> has three downstream ports.Two embedded Ethernet devices are present
>> on one of the downstream ports. All the ports present in the
>> node represent the downstream ports and embedded endpoints.
>>
>> Power to the TC9563 is supplied through two LDO regulators, which
>> are on by default and are added as fixed regulators. TC9563 can be
>> configured through I2C.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
> [...]
>
>> +&pcie {
>> +	wake-gpios = <&tlmm 119 GPIO_ACTIVE_LOW>;
> This property belongs to the port node
>
> Please also mention in the commit message the reason for the
> PERST# pin remaining undescribed
>
> Konrad

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
