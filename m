Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E06CC88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 13:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31d+rgMHpgPD5YCQw3CJaHvnpiCyesjmDqEGZ5tzxsU=; b=x33DFHBmI5nevT
	KZc25UVlZjLf8jyIzcs7wEvXPhxkzjXHxFzX/saBKY9/bbBgWOSRkMqsavR9Oaj1pf25XGfIhoKxD
	wsj4iW8aevQtWydSOkflq7QOg9Gmzxi8StDLFv3wOg7ZHxjgDHG6q7opSl2rLiBXawL1vnadCyOA0
	LBcJaDCQl3s2F+rJVAg7EjIAoagEBq9WT3AB1NRAU8r6TVVfjet4SRvCcFahGf1RHBCDUYg5TGOKU
	7cjysbUfpRmgHr9G/IkD3Edq4w1yTFxdv8MWZq+yvjLiIs+/H8tn+jd7Y5YcIBrjLzpgsO0sdca+r
	+KxxOYVY2GzjwQzwzaVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pfQ-00000009GAY-2tLQ;
	Wed, 16 Sep 2026 13:27:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pfN-00000009G9Q-1wUi
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 13:27:14 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GCYiT92586461
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 13:27:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4MESC1KI0wX6qjB4s98iNgVKHGPJ6KH1ZIsZM1iGaT8=; b=mdcQP4VEcQ2YZ7in
	MjoGc0dkFhF7e1Dv5zwqOWromheFG07ioVoo3k3geil4jNO5TfeAxx8TGU5y1HZu
	2S5kA45hKqN3uVlAdvWOEDA9DjRfgC6bS+2GETOVdeEYfGkhVvztUVhxSV+chKEq
	aE7jNidhypXHnk9ChR+Bu4Va2f6K2fHY5rC9SO2LtcKQxPTGELynf+pImUOz6ax6
	uNenbmdMs/6J1dZVR4GqsvozYFJAuUc8Sds+eikKm5BkiFd4w4eGhgRT7Amyf28w
	uZnLSRZUXZZfz03+eOW7zJDFQeoF0qViAU0pyjG4nYDMV2oVbJNslXVNQqbJtX/Q
	KZejwQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqkv7j7f2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 13:26:59 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8688139460bso5705762b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789565219; x=1790170019; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4MESC1KI0wX6qjB4s98iNgVKHGPJ6KH1ZIsZM1iGaT8=;
        b=GkWgZUFelrMwQb4Vn21gfJkeydTcs+zmcyAnsWAXSDWkB+cemIh2xihp46Mo3LKFUa
         OcFDyGDXwnbNAsKO80lUteQHxsh+VyET/1y8VpkX1I5zrtTHenW6cHm+gcPw1/PvO6oU
         L0WI65JisHgoU11FiKJUeOkd+4wXQtfvah/weT6wE/vT6aUG7fLT00y/F2Sp9dQvNpn/
         8M49tVRM1MNnn9fbdWx26y4A720VCSsxAS+NxpKzK2LXJVqmRaWzuc4NsQhVThTjnEQS
         lJj90BnJvbUlSYfy8hRb+szzgMQahlc+9JXZcr//mjrCGB6jMwbzYbE5UWWB3rTR98fJ
         jnfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789565219; x=1790170019;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4MESC1KI0wX6qjB4s98iNgVKHGPJ6KH1ZIsZM1iGaT8=;
        b=jjF0eXL8FDz/x01X1Ue41wO3W1WjsrAJYckodT3COsEg5248PScs9YXImleXF7PbeE
         myKD5DJNSR7hreP0nq7+cCQ5bAlYdOpqrDb3iOrloP7oWTpf3pevQhREUcMEhWodJVJu
         kAi8cb9R+Rtda8SrBrgQHNMjTk8rnN5CznGyb2UolcGsVoOxwLFEj4Pyg0QtoqJDjbRo
         USBHds8i1k/t7CmqxexSk2vJIicgsPTPJ70G1c60Sz4PMe7cIJs7p8Mc04MdYx78je54
         pKRq8bFcYh4nmPq6IxXw9ZGOrYD9XUkEHxEdfuaiP+XsfPydTx/cHCWbcQt+u43NRD8f
         BC0A==
X-Forwarded-Encrypted: i=1; AKwUvBydHgmDGFVdaLRr1ZIMxZ4i2zuewACaRw9q/w2h9axIQ72JAWv/f0xmcy1fQlASqTxczvPRBwjOx/s=@lists.infradead.org
X-Gm-Message-State: AFuF++mjIGjW587kBXmoJFTZHSD+bVDntrIOHHAVow2FfnsbiXMo37He
	WTla+LvKlfh29JqfcyW5QFr+YKuw841EsGMd95a0sYhNWXl05EUSSk0TnCENG/49KOXEpuyHcQ9
	zf+I4/PhHyKYgqNpmk13ptbzEtikvEzPVtwVmCkvY/7LPAcrqAfh0ZB4o1PlWy+76jTGV
X-Gm-Gg: AYBFou0vyjTQBQjl9tXa9/PydmSRgy30Deat3w1psKSxex8tTUwyuLvXNLF+qYTAgTK
	sb4/SeweRvf6wRJqVejri2kdfC2IANrI0TVIhfIcOa+YVtLhLDC9VcO2la3LdkVVnRxxbTyzTPs
	bp4x0g+I0AFbcRj9ncZ2/8hdcuZNzy7NdEKQFiRcRnJcHZ7aoyxgouLm5QKEl9/qBEqbRBL0lYU
	PqHTQqIj5EhDvb1NQHfVg78jQTpHHaPV5YomnZHKKMFTCx1zi8Jr5MPhWLaaGmX8W50ligt5mWi
	1EdYEkS0rLC9kZPnkQwI0hS0o9LS1cOJBKBxOp96Iza9/n+IyEB8JuNDhFT5kZoGrKUF+M2nj62
	MLUkaEcUysGV++BmgOiTiSie4BGGXxm1o
X-Received: by 2002:a05:6a00:3c86:b0:86d:c2d4:f3c0 with SMTP id d2e1a72fcca58-872376bd23bmr5119020b3a.9.1789565218616;
        Wed, 16 Sep 2026 06:26:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:3c86:b0:86d:c2d4:f3c0 with SMTP id d2e1a72fcca58-872376bd23bmr5118933b3a.9.1789565218017;
        Wed, 16 Sep 2026 06:26:58 -0700 (PDT)
Received: from [10.92.206.34] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-87201d17e76sm1241562b3a.49.2026.09.16.06.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 06:26:57 -0700 (PDT)
Message-ID: <5f862178-ba18-4b27-b5db-1732d57d7b47@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 18:56:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-5-b0a82721c547@oss.qualcomm.com>
 <aqJFo3beKde404qd@QCOM-aGQu4IUr3Y>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <aqJFo3beKde404qd@QCOM-aGQu4IUr3Y>
X-Proofpoint-ORIG-GUID: Ss-NWjkDO_-BxaAb0RAKtgoiKSnqDbIx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDE3OSBTYWx0ZWRfXxeZcBYuwg5AQ
 CxyvUaHOcWD7/b0zYTHDFeFDNv4JMDa3YuxC0S5ee5mKrmexbJ1bGTnFSvDHVov4C8kjLS0zubb
 D/8rocoDD/PPt17AZef4IY8gSIvswmz/GFIKOTZ+ofJHYnrakRocS3wTIP+nucr3BQ53J2W6t+q
 rG4tWgXFyZZbzQgOpfSJ5fNoQC7FspbAtvUfRtz/JzP6ZXV6pgls8gNIpBIditHvtX1811naFw1
 XTme4fqar5NAa8UNU2qCUbzcBTwTJs8M4txkQHmVvehTpS3aj08JvhiLzTdGXyeVhfGRbTNKuMP
 CMikzsO5XGcpPK6dpJtR/8aFD1/+2xzqsEjtsvoKf1stZnnk1T+4rA3uVxoPOAjre7nS1759MkV
 6vFp89e4NPRz/cSeYTAonrL9+/Jk8qmm05siDRoRIpV/DHadDiKskJodNGsvIY0L/4gSjDzpoa8
 sQW+rq5o+k3QKianUqQ==
X-Authority-Analysis: v=2.4 cv=eKmGH3p1 c=1 sm=1 tr=0 ts=6aaa9923 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=L3-XMscUPCAweoWNVT8A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDE3OSBTYWx0ZWRfX/0ojzLJjNOfb
 IMjnijJUIP2e5GST2FW68IzD6dyzkMX2rZXeB0BNckrsz1BgeV4xaKSdSe4SbLWDoPgzxOrwpyM
 92Wp9Fdn7U/ySxL3/zs/S0fUSCpiMlk=
X-Proofpoint-GUID: Ss-NWjkDO_-BxaAb0RAKtgoiKSnqDbIx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_02,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 phishscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_062713_625647_0AC18FE1 
X-CRM114-Status: GOOD (  18.98  )
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



On 9/10/2026 11:22 AM, Shawn Guo wrote:
>> const struct qmp_phy_cfg *cfg = qmp->cfg;
>>  
>> -	reset_control_bulk_assert(qmp->cfg->num_nocsr_resets, qmp->nocsr_resets);
>> +	if (qmp->nocsr_resets)
>> +		reset_control_bulk_assert(qmp->cfg->num_nocsr_resets, qmp->nocsr_resets);
>> +	if (qmp->resets)
>> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>>  
>>  	clk_bulk_disable_unprepare(qmp->cfg->num_clks, qmp->clks);
>>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>> @@ -335,6 +1067,20 @@ static int qmp_pcie_power_on(struct phy *phy)
>>  		goto err_disable_pipe_clk;
>>  	}
>>  
>> +	if (!qmp->skip_init) {
>> +		qmp_pcie_init_port_registers(qmp);
> Have we tested the patch on Glymur? As Glymur's cfgs have either .pll_tbls
> nor .tbls, so skip_init is unconditionally false for Glymur. Is it
> intentional to run qmp_pcie_init_port_registers() on Glymur?
Thanks for the catch, I will test for glymur before posting next series.
>
>> +
>> +		for (i = 0; i < cfg->num_regs; i++) {
>> +			qphy_clrbits(qmp->base[i] + offs->pcs,
>> +				     cfg->regs[QPHY_PCS_SW_RESET], SW_RESET);
>> +			qphy_setbits(qmp->base[i] + offs->pcs,
>> +				     cfg->regs[QPHY_PCS_START_CONTROL],
>> +				     SERDES_START | PCS_START);
>> +		}
>> +
>> +		usleep_range(2000, 2500);
>> +	}
>> +
>>  	for (i = 0; i < cfg->num_regs; i++) {
>>  		status = qmp->base[i] + offs->pcs + cfg->regs[QPHY_PCS_STATUS];
>>  		ret = readl_poll_timeout(status, val, !(val & cfg->phy_status), 200,
>> @@ -357,9 +1103,36 @@ static int qmp_pcie_power_on(struct phy *phy)
>>  static int qmp_pcie_power_off(struct phy *phy)
>>  {
>>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	const struct qmp_pcie_offsets *offs = cfg->offsets;
>> +	int i;
>>  
>>  	clk_bulk_disable_unprepare(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
>>  
>> +	/*
>> +	 * While powering off the PHY, only nocsr_resets needs to be checked.
>> +	 * This way, no matter whether the PHY settings were initially
>> +	 * programmed by the bootloader or the PHY driver itself, we can
>> +	 * reuse them the next time the PHY is powered on.
>> +	 */
>> +	if (cfg->pll_tbls && !qmp->nocsr_resets) {
> Every cfg in the file (Glymur and all seven Nord ones) declares
> nocsr_reset_list, and qmp_pcie_reset_init() only leaves qmp->nocsr_resets
> NULL when num_nocsr_resets == 0. So the condition is always false, no?
Thats true for current targets, but on future targets it might not be true.
I will remove the check here for now, in future if we have any target with
nocsr then
we can add it back.

Ack for rest of the comments.

- Krishna Chaitanya.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
