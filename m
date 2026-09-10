Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10B7AC79FB7
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OquxW08U+t6LU4nOxRlotYvjs+kkWDUl26mHaBS7Yzo=; b=XzcGoD6h7oEnKb
	EPNo9ACiHQW5/U6+T5GB98fVeAM59G7iMZxAr5IfjWz8kVav7qP62yi6ioe12om4QIt/BeFfUjF9R
	JnrA+KLWpbUf4FFBBnexQGxpCEIrPcwIsrUEnpOfY0plEZBtMeNn194OMBY4qz8e2L7rNADxtFWbo
	FEBlYzLvFEtzf5B+XyMg1RJYj+Et4bOTxeg2B9O/0NgAowXIiBweXQOQEt/EvEcLP9jEvV5LZaXwV
	ydO5YLy51IrfGjf92fWPDSScSSrVkKbaTUJBC4k1ob5u+gccXJ5P8zbv4Z6aNjVrY0+WzFSsfQPvM
	kXY2siq9aveNMCqFRyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZDp-0000000DdIp-39Ab;
	Thu, 10 Sep 2026 07:29:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZDn-0000000DdHn-0vmS
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Sep 2026 07:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6YNz9aQncJ1CZpH4BcRbIvGfWFPMmLPfprY8Gmu0G7A=; b=IzfRVZjluauH2CtkIV9VtXtWpN
	6d7D3Wkq0goNXyz+wfcRd9+x/rIFLNhxV6N7AdrfB9U1QYTNZFqOsLGqwHMkbe6jhDEs0SR6+Yzin
	oy3wQ67q0waW/UMZHK92+21RtxECjZszPi7FS0JE56U/42xJd+3SarWIJb+Ko4caAKfKSf3xrX3r0
	nWcKw6Au2Vbob4UFdbAERSJnBKn6QsffAcpdDrO82G29+dWLQIcHW7yj1X0YIly9TwsPCD75X5vuJ
	b2R0J8sJEe70tpmDulPJyrxHqDUCzswqCHKCH+Ar+whYUCIwnUKyqmR+RSAxolLzx6yQn0fTuKkDc
	tRpIfOig==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4ZDk-000000028NQ-0fbj
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:29:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5GqVr4058877
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 07:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6YNz9aQncJ1CZpH4BcRbIvGfWFPMmLPfprY8Gmu0G7A=; b=Aaj4bOj320dR5D6v
	wbaN3MPQjYF7rVVSxVaKvfBKpJ8GOJKqqXXmIuHRDtLeWXMDo2ruaBFkxynLt+SV
	WlPxz86h1cN95ZVKExJwIK0lO8gmcgVZWBjrjQXHfo+JnNPXlZrb5w4y06BzN55+
	1GkPASd+1H+uSiJbw8/tlJ4EPBoHGCxoTpPZknCodatO+Q5a2E8EsQJqpO62SzW4
	f/WKKolBeVtani6d48+SFbA1KX/N5YXpFy2FKE8lSCvVwuyXkxaZo9lMtdvioNiH
	THwvmmi5cDQBoM/b2ebZzuFHwZBmN2xjXjB0qPRfO1y6vwntHaV43ZmyJ9Yi/4Qt
	TPhYdA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyftp3c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 07:29:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92eebb130dcso122948985a.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 00:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789025356; x=1789630156; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6YNz9aQncJ1CZpH4BcRbIvGfWFPMmLPfprY8Gmu0G7A=;
        b=HMhK21v+0M2IjiCmvLVgy3dEjU5pkIU2Uls7iFJmhTN7qm6nt2R3nkUmumgVJ+5Z60
         u9zXBUq9tzYh2Q3fhHOVqIXNdk8iHKyYJ5iDkp6TI/bDUikXO78xGHRtL8GwPEuq/pVC
         g5B2jdcjo5l8KKTvGYQszdipEGgbGBpRHMgfA28g4vjktJD91qUOD6anOLi8mbbf584G
         X8c+I26dYHH67faJNLj8djuR/y2m3K6/zaXPpDUUkY/2TR/wnzhCMdOpe4qHNqE7i5bk
         8Xd2oU2pYEryBqUpjh1nDpFdCDQdMvyfNtCzR6qEE68RWF3SUBueweMr5m2Wa3MGUxsd
         mmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789025356; x=1789630156;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6YNz9aQncJ1CZpH4BcRbIvGfWFPMmLPfprY8Gmu0G7A=;
        b=bBvvpvjHNqXPuuCaevJcBDxXXbpbABF1YVq55x+avIqV020ZJAjKb9372aJam+cXHl
         9/5KFZGax7VhQZuZcgV3f9SRxFu4qhJaAHLt+UgGo14ZACjPJVxhgBa0N/62wP+t0R0D
         BV5ZDqjBB0h6Z+LZH6tXZwkNUGzB0eoilQMugjlY8+Yux1d9JUViKIoPuVcdTRG8FyXH
         uzOc/ebir5DGBNBPtuKLOwEz3gY2DlVTo1I5axuvLW+yFQI9gbNN8zT6OPkUKavgy0EM
         8MwnJMmBxG1yBHL+Xww9ZsVV18DAqyyFRdhQ0QdrpcdEYnYOq1h8mvBkZF/dD3atj7zi
         +zcw==
X-Forwarded-Encrypted: i=1; AKwUvBzLL+StVqn8kTcM41srIwh5G8wRjH3lvWtIx+wEcaXr7F0EPKHWfxqtBUaE0itRKe0MvroL1gdEU4c=@lists.infradead.org
X-Gm-Message-State: AFuF++kV1pUPx6LozRaGbDgf8I8dclITkDUYn901yE6eZD8957gZihcd
	3UqcHWCupgY7H3c0v1o+Bs6lxou0Fo10mqJA2uBxSZCOwBEBU8Xt4nzarCepSeEsXs7jcPHE0IB
	q08jpV9hUAfis3QZ0QGYp/otmQqkYgZEQY23wHsh0uGuuoga9bOCr+p2rGSkPiWZc5odv
X-Gm-Gg: AYBFou1g4v2IjHHlOeVg0z2eZJ5V5AjVcISd6T6xlFv7fE3Wlm58ChuLEDBmj+BKnr7
	qN/fWkxmpfxFzMY/0JngDYZAzcoNbHzSBE1SjarvA4EBiKqn7cSq/acnHUB2nsBZLoP7wFkkEfC
	OCSLTVWtixCrf+uhn4NI95hxvuzdONFARFzMHv/uoNXxE49tVzosDBWhdpHALl/MpDdedYKVeYy
	qQ7gQX8Sa4e7k71vd5XbzE3lioad/bhOQyBZq9PdI+cl+dl1zabI0U0W87S+khk9FoTcqwaz7Wo
	p5s8ruNwPBXHFRBgQd8cnLletYW2Zb9mNhFNQGKrtosz1V5V3X4qtIbFey+9poHuiRTTaiyxnGM
	huUuG7ZgWiJy3Eh6AHEG5lw==
X-Received: by 2002:a05:620a:4409:b0:939:8bc:8826 with SMTP id af79cd13be357-93991702d25mr3078276185a.2.1789025356648;
        Thu, 10 Sep 2026 00:29:16 -0700 (PDT)
X-Received: by 2002:a05:620a:4409:b0:939:8bc:8826 with SMTP id af79cd13be357-93991702d25mr3078268985a.2.1789025355527;
        Thu, 10 Sep 2026 00:29:15 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c28e9aec296sm586663566b.28.2026.09.10.00.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2026 00:29:13 -0700 (PDT)
Message-ID: <678b6d96-6a61-4689-afc0-363b7a6f209c@oss.qualcomm.com>
Date: Thu, 10 Sep 2026 09:29:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
To: Manivannan Sadhasivam <mani@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        shengchao.guo@oss.qualcomm.com
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
 <smgyk5ray7laj2ltwnmx3r7cfiouj4hyn7tyfmx7rpsrhu7kin@p5pr7wdoprjn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <smgyk5ray7laj2ltwnmx3r7cfiouj4hyn7tyfmx7rpsrhu7kin@p5pr7wdoprjn>
X-Proofpoint-GUID: aLQwR0VE7sHY_zgLTACR86zNny8LGiC8
X-Authority-Analysis: v=2.4 cv=GNqdgeNK c=1 sm=1 tr=0 ts=6aa25c4d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=XiBqvqFe6rftMWUyhawA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: aLQwR0VE7sHY_zgLTACR86zNny8LGiC8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA4MCBTYWx0ZWRfX44DnLkT5gGw/
 UJ9yxZa0x8XKXpRdZIAlgb+mxriNi6ZlTSn0HBJQaMom/2t7BTnJuGAqFxQ42PkHScM4oVYZHsM
 5UGSICZM7Y2XQdiZkHpndLVvXkv2iMjMvwp8rD32MLFaomY7OcNaxfhuwznuGtFL8Z/zRZj+j95
 TYI2j54uxZw1Q+WrONI610nv6RsOmes/hWqGdJ+REWnpTX5uxy7yDSa7b8/c5GpOBobFdr5JDDI
 RWXsZEYZnSkkMtq8mQYQu6TE5yc6VQSP16uOi7GJ0NEZLEU8Ga0rjWGiFKyZ+B10TDOlEX6U4RF
 6rcNfrGcJkFcq/V1x8qmIIr0H4As/nX2aJBfkvxMzHUFxPTnQZS98V8mfSReOe2zyFWmfmrz7so
 U75rhGr171J9mKYADpprdPVyw6teviaWFgK2JSwJRbhJn8PrDtg9pjyDO3y5saB9QB2mu9qQaH9
 2WimM8KlIiL663mYt0Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA4MCBTYWx0ZWRfX826VMyF6dR5W
 NfX9MDIyRImIJdiLngIQ04yHcnsK+uFsAr4Lb5S/8Jc/5h1uH2/bB1kQP2fNTnclCjykY8CEi4Z
 y3PjgxzqWLkmWUjRpQEknNjkjukjvbw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609100080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_082920_588049_4083B62A 
X-CRM114-Status: GOOD (  11.56  )
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

On 9/10/26 9:20 AM, Manivannan Sadhasivam wrote:
> On Wed, Sep 09, 2026 at 05:18:18PM +0530, Krishna Chaitanya Chundru wrote:
>> Nord requires a workaround to address a timing convergence issue in the
>> PCIe power domain. To avoid the issue, set the CORE_CLK_CGC_DIS and
>> AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.

[...]

>> +static const struct qcom_pcie_cfg cfg_nord = {
> 
> Can you use DWC IP version instead of SoC name?

I'd say it's fine given other implementations of the same DWC IP may not
have this clock gating quirk

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
