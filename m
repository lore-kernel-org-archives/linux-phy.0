Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEAAE81A2F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 14:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67guE3yFuR8TIjVG9xDw2RGE2u9GcFQjhah50D8sYKU=; b=0UDg0O76W68cy/
	qie99MFlwpNBaNyKot3sG2Z+p3milzlYESwqUzBdmomwNoWzZcKH8hSBCb5q9bkdgBlIC1mePin3b
	Lh9WwHooRVYaa0pgL+F0ide8VOZmf7SjcCIHuktlFdcnbW7OFdB3pxBbZxQf2ufGBO+h8DvDj5Le3
	exuGOpJOP1eH67q0+pMBRl62K0klhe6eJdYqL5GKKi3P+CFSu/PaZylEbjTMgJmefkK//rMNyvWNb
	vWlY7Qmnvkqc9YfiqK4fF+m7IORYg+HNsLj7iUimqKYBP/CQ+3YaEURcLtkRTGx6nPPfE6AvdlxEx
	k70B372o7h0USjqLKJ/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs01N-00000006pSK-24SQ;
	Mon, 16 Feb 2026 14:56:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs01K-00000006pRz-3gqh
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 14:56:20 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GBadBo3742541
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 14:56:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dQWX3UQlIYFi0a7jRaznYPVGKQGU63wx8fL8q+mXUUo=; b=aOv0twFCc5RXC3DR
	x7C4GzqgPXwfHb3wPEvhSjU6l+NsxJlNRA4kXaPRCcS57nvTj3F6HiDKlJCl+C31
	qdSvNCKXmpUeJtTjvs5d/K4WkbGSaKJqMyouhZaGruZfXbwGVyAotidcpwufao86
	Qg6NSw2QM0Fo4RT8fJ8PcmRtNLsFLfNJpIKUdMGTB5ZpwpZHCBxCwPPoPcfBlp+T
	ZyhPIKC7RvSkF+Dk7Xq0Tcuq2gWZCMt5anhmWjN0aVVg8OT6deGbkwWg2TE3LmRU
	UBW+x7Uy/ZcfGuXxHJErKZMXk1t4O3UnabJI3VZ96zDLGjz4CW8CPQ8vEl3Kta5M
	Ek8yHA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caj7jcr2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 14:56:18 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50698374e33so29272781cf.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 06:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771253777; x=1771858577; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQWX3UQlIYFi0a7jRaznYPVGKQGU63wx8fL8q+mXUUo=;
        b=MhRDvr9uiAIlwhhsUK2y+cDy56JaDs1Gs3VJbXpZ7B0MOy00QKN5v9SGV8GhvtDpuk
         CG8o925cJG6PEQcXSwY7fU73ie+xdjmDPrUTzDV0l/2cu+77Jn9OJ3ClLBAAfefrFmsC
         MSUZMF3zmLTDXEX3rFWaOAM9MaMy80kSUUigj09G4Yv3E2KeJX7Ikqopf42kBPQO+SRO
         aiP73u5Y6KERBXU7GZzFSOmbYhmmPp5Vjq32or8zzhxKAKXE8nG7XjdVcRAj40euHeSE
         YK0NQICp9oWIVmNIV7LC3LS8TAuOzpoDtIXwy08JG8E7+VLAe1ov5zGsQeq4j82Nh2RT
         bMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771253777; x=1771858577;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQWX3UQlIYFi0a7jRaznYPVGKQGU63wx8fL8q+mXUUo=;
        b=NUonkkyhBEW5fdh6jrsQ4Z5EIBuLXQmu4qXKkM7pjLWQHNel3G9aWi+CHvrMwSZrkq
         /2ncv7yQbwdwUUkpI1cKK1d/glm4TZGZh03jSww9bR/V4Pm4/dFe1+TO2KH3k8SVVKbs
         nw2GdA/j3UNruvadAWKcDGkqtw7A9YaaEqTT0nLaVmQAuuCbiIrMWrYj/UO571KscHUW
         fjG5KGLRpPp7O6gPEbiE/WTZ6q1XSGRw59fFgUpcGQ0L9xj2NzTBc8NzrVML6IoMgPqh
         tzt9yblH4kfij0QxaZXty5k/jwTbHE3k4dtk2uwpjKD8msMzvZfWLpQCg8nuRI0BML39
         R/Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUfpb19Ft/JswwD++I4SzxO6UsEj3KDFGplJHSXof5MVzGeZbzw6fj2QjHRVLFRovQnod12ubYPoS4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yywy3NkPcTvWko1+ZHYf1z8vRTrBT/2St2Btto85m6Swf5LkQW5
	AyNdbLMDTxVE0/MiQAiTKGkMHju6qwHv4PkX/U0RK825DvUPZO5ZHhY0/6GH+4ccVd0qYEde1ov
	CDmxQLmX5g5hzDsi1togPnsC+KlzBbOTgSIcp94noXeHb8eaTPpPUDaTmOFcn0CWMF4fj
X-Gm-Gg: AZuq6aIYCgPrSqZOBKtkBAKRQypotofByWXQjSs3rOrL9dd3/CzTD1wWn93LKPGC6IY
	f/3MRNQH+rEb8ov9ct2WwsIYLuLL25Pw8gYmAa6x+ILarP+IwUidVxHDGo4wFNU6og25GyLxwAU
	6djj4fxtmT+aqt0e2BpaiFoF+y9rz1nBcVuBeuPyGcBwsCyKq8vWzUDXKVkq7vH4SGwhYmkuwKh
	n02ChWvP4utEJR7PKGTzykgWrhCL2gF1qoN0387OSAkD2gCCWdxzrJ05sFOqOa2znX3xmVws4Kv
	rOChiaeIOgVpfdXcCIVwTq2Yy9Io21QZzdnM3LptME5iUNTollagkgkHM1mqKwa/fVrA/XDEQ1v
	TqNI65Ubk+pHXMDQGA6RpMyju+BL5thqAUS8ZsQnXzpAOPeVWiMYtbEwTHHMTKJdZ6YAX8w8oAM
	llgcw=
X-Received: by 2002:a05:622a:1109:b0:502:a1bb:632a with SMTP id d75a77b69052e-506a666cea5mr115892631cf.0.1771253777221;
        Mon, 16 Feb 2026 06:56:17 -0800 (PST)
X-Received: by 2002:a05:622a:1109:b0:502:a1bb:632a with SMTP id d75a77b69052e-506a666cea5mr115892171cf.0.1771253776687;
        Mon, 16 Feb 2026 06:56:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56a476sm3269353e87.32.2026.02.16.06.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 06:56:16 -0800 (PST)
Message-ID: <49540c43-894b-4d4c-8c46-4fe09d649729@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:56:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
To: Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
 <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
 <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
 <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
 <aaqqdz2ssnetfgtybuerjfnkgr7r22xj2whaawaqhgm4y2ygom@jtkn5z2nw7aq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aaqqdz2ssnetfgtybuerjfnkgr7r22xj2whaawaqhgm4y2ygom@jtkn5z2nw7aq>
X-Authority-Analysis: v=2.4 cv=dIurWeZb c=1 sm=1 tr=0 ts=69933012 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gjtn7LuX9S0b4PncKSUA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyNyBTYWx0ZWRfX/W8RqoYyoXCf
 R93DsaKGnkeOAxEjimHXaOW7r9txLiHEwpHs9Gs9yi/T9xlTw5dCDPmNGbwElMaH9krKL8w/hSw
 19t/3xXQGGbhuvZ59BCJ3j+YSuXkXhT0XGHub3CurWDqk7XAQBnaJdJXs41VADZMiLkQzrErV5P
 7p94L2ZFyZEhX0tzW/Zd0kEAoWwaoZaMfgmQVDxHeBvNx7grMl4bTVrZ1INUBPdtW1wOnlRX3Fs
 l0WUzqbsft7skMmnRCDPX5NbFWBk/8jjlQDZ2YI7e4vWtcCX7k4nQM0ALdwo4xdtbd96OZTpzlN
 wg4H8xZ/2VwYI4FqjT7uJ7tSZlBg2VSwVTAQZUUCP1zBMCUae1r3cCNadaPEmHFgQoygWPj9y4Q
 rb5hwHgRQTlLogwOlaO3PGdB4JH8zo9QO1I7IgkGrvFokoq7SwC0EoY5XzKbC/Lf4ZE8xupi842
 Q+j6H6LOYvhvP/SMvMA==
X-Proofpoint-GUID: _aPlP4KLCkfNrOLUpQXFFQWdsppupx1l
X-Proofpoint-ORIG-GUID: _aPlP4KLCkfNrOLUpQXFFQWdsppupx1l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_065618_928523_6DC01C5A 
X-CRM114-Status: GOOD (  17.73  )
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

On 2/16/26 3:53 PM, Manivannan Sadhasivam wrote:
> On Fri, Jan 09, 2026 at 04:03:37PM +0200, Dmitry Baryshkov wrote:
>> On Fri, Jan 09, 2026 at 02:10:49PM +0100, Neil Armstrong wrote:
>>> On 1/9/26 14:08, Dmitry Baryshkov wrote:
>>>> On Fri, Jan 09, 2026 at 12:51:06PM +0530, Krishna Chaitanya Chundru wrote:
>>>>> If the bootloader has already powered up the PCIe PHY, doing a full
>>>>> reset and waiting for it to come up again slows down boot time.
>>>>
>>>> How big is the delay caused by it?
>>>>
>>>>>
>>>>> Add a check for PHY status and skip the reset steps when the PHY is
>>>>> already active. In this case, only enable the required resources during
>>>>> power-on. This works alongside the existing logic that skips the init
>>>>> sequence.
>>>>
>>>> Can we end up in a state where the bootloader has mis-setup the link? Or
>>>> the link going bad because of any glitch during the bootup?
>>>
>>> Good question, can we add a module parameter to force a full reset of the PHY in case
>>> the bootloader is buggy ?
>>
>> I'd suggest a simpler thing: if the reset was skipped, reset the PHY in
>> case of an error and retry. That's also one of the reasons why I asked
>> for skip_reset not to be the persistent value.
>>
> 
> I'm not sure what value would resetting the PHY provide in the case of failure.
> As per this patch, skip_reset is only going to be set for platforms where
> bootloader has already configured the PHY. So in the case of PHY link failure,
> simply resetting the PHY won't help IMO as the PHY register contents are going
> to be presistent due to nocsr_reset.

We can pull the not-nocsr_reset though?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
