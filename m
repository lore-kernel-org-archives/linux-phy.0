Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2683FCD98E6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 12:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWHlze79WPwOgeBOiLh48ZLDjfvv8z6XA+DQ9FMHZes=; b=K+GhMs5x4/jV6g
	hEgC3gT+D7mxoDG0FihdJfLVpwpP4BzkIaT0K7LIUJLf0wgxmxcTM/mEKfyhngpBu9Apluf2fPVyr
	prq7STO7MHMWi8rpJwhqfqrNOxu5BTeObjreeu/dc6Onw9URj8qKzXc3Tj+6TuQjHDeY9OwO0e4PE
	Hp1Semt5sQ77mIancsIGTmNoQU1iq4hYXAH/YawKHuFQpdGJUGsNyyBadiGfcRL1gYGAgIdaHK3dE
	KtoQeeN7vm1ro5y0q/zmrc9Gd+s96OvhER9tKW3OQ4cBvP+NBzy1JgP0u31TI0u0JmgCs503RKE22
	g8HleiAHbedaVZjCd6MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSoj-0000000Fl00-1TdY;
	Tue, 16 Jun 2026 12:22:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSoh-0000000Fkze-074F
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 12:22:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GAC1um3256252
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 12:22:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bcEkcPtMtutFQ0nojyplD+yn0BA2r3GEybBSJI5Xbag=; b=T5Ji00lZ0+MfQp6X
	1Czl+gt8xy30ur9IlOuLgACtwG82+77wZ42OSb4Xn7bndEYGfn7w2pVwuRWdW3kD
	fmFL9PnPEZQKtabuuqogfY2fRhc6bhe1FzoeORITtmmd0RNGMMIKyyWiZ6W2CGSV
	4uxNhRVOEoMRVFctwqkOt0mUxSzPwMuve5Biexe/SxIBXNB5uy5/87SjdpUKbQAa
	4LNDjsZB1HCpOvFGhMYWqhH1YQeniRk4gvip/W+pSEfUmhSpNruOr9Q626Q1ycag
	T4SQuxVAqRgEhaWL6mRcqujeOtuFj1Yuw1s32MtGxiuW9NJmrcIdnSSda65ZZqGs
	TDQOtg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu09k9pqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 12:22:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9157b3e5182so15788985a.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781612573; x=1782217373; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bcEkcPtMtutFQ0nojyplD+yn0BA2r3GEybBSJI5Xbag=;
        b=aI7aGvyKsC1fi0phM2JdHVsm9LTYbqgvpefWMDiPx48XDWkPl2v6zBfXlT7pZRYYCa
         3XG5OfWYtmOwuVpeb3C36GwPqsk77wvoKAKow5T9Fe6gVCPuJkISWgJTj+vqHoUygGHV
         SMAuZ4eXW/w8eN+6M+ScfX1EstKDD53seu+OdQiPNokKWj1pSs0wpf5sjTMO6/Rp61lp
         LkH7T8VNTcP7xPE2b5ioPFTavCFs+yq2ASyPIF61xmTnkNKzU0zBbbpILw3zaXBeoF7h
         9SXIrbm8aYoKkYNBHlXS3oJmSNMaJ3NvctsMrDWdMI3j/Uj4obHhYGch/WnWqCc2Hatz
         O+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781612573; x=1782217373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bcEkcPtMtutFQ0nojyplD+yn0BA2r3GEybBSJI5Xbag=;
        b=Y0gImuTH4a6RvkGcfdNSPfHbAE0E0sZulC6u2FeQB5d7pkV1z9p137T6iBFZCSquEI
         eQDUg6RB8cfEctiJsaW5m8iTbpbZGvtI46xtpWOKvctGNC1s6DKSYQnYR8sSrK1Be8EQ
         ZZIWXGheMbWnN04SyL3WrykiKvgloBc/FFg3fgg/Asv5iwMIFUdQWiPLSj0nGEeu0LTi
         Kczy3n8x395qQQ4w7A4d2/QH3nozggpR9RlGcf0STVwVL+PZdF5GxfM5wK9ExJzamopo
         KLwrEExeGHpbKAMfrQcfV11LfvP57edHDB+qASEQqiRQrY3TRy4L2b8i+zmwmTYBIPnK
         eqMA==
X-Forwarded-Encrypted: i=1; AFNElJ+ZGlbo1w7QeqTyL6s4h+kKCAnpnNzX+DupY5n4cF9aSjnru5sC2HlUoqqTNis9sRQwo1+83sSyCP8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvZgUfQcpumn/rbTZ5KZmCpG7eaBXlZkkWxYsJrLEqC4ubDd45
	dO/hotivATzXNzuFu7n7I387hTihU/ndIoxFPZSKsUGsuRbAgx6sT1Z7riDBqYIdzWkcGxnKMpT
	Pumacek1tB2p9CcxGJhMCmM62Y+TPhRtXWOXwIE4pYw4yXq3JhphhzU7r7pIqh51vtLpMDcmjrj
	xy
X-Gm-Gg: Acq92OGh7kC1QCEt1VbuT/xLLBzt8IgkrypBFi0xlTrRwfvkV0fvn0gZ1/r8mR7DqAZ
	/IUeeO3XoyiFKzf3OmDspfH0XOpcIWkxnF5VYuZCuMK+4wNvQpFMwqibF7eVCPtAuVMDAKvBwEv
	OH9bh7bmw7ioOTszTtq7PBkDfpJ6BC6+iVq9Wr3CcEUL0Wv1DEcAb4yRBJn3w5BvLQcyCdqC5FP
	uOMV3oqOis0IrsDJg7GRH5J9enGpJ0Q/0aCAxGVNxNjXFVkstngHyZ1b0Om87sbtHcM2s+qfnfz
	C4TbnKR9qyfwPUVs9882dHPX53GP31IH6WBfnocIzg4RcQ5NlQz4a8bBNCaQKVe5gWwD/yQYG/p
	q34US+dEcs2eyuN2nAvOooxpT3sR0LtEl2XV1AoP2Lwabtw==
X-Received: by 2002:a05:620a:40d1:b0:8cf:d289:d0f3 with SMTP id af79cd13be357-9161bca6345mr1765199785a.4.1781612572818;
        Tue, 16 Jun 2026 05:22:52 -0700 (PDT)
X-Received: by 2002:a05:620a:40d1:b0:8cf:d289:d0f3 with SMTP id af79cd13be357-9161bca6345mr1765197085a.4.1781612572365;
        Tue, 16 Jun 2026 05:22:52 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb5103710sm636854066b.22.2026.06.16.05.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 05:22:51 -0700 (PDT)
Message-ID: <38dcea05-581c-411f-9196-caac9562d412@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 14:22:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1-dell-thena: mark l12b and
 l15b always-on
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-4-mike.scott@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260521010935.1333494-4-mike.scott@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDEyNSBTYWx0ZWRfX+HZBLY36pbeN
 wWzeuWCLfAp6LG+GRMlJo+DWpuOGIKdQLvjBfx5mpQaYpsVbrtp2kse0usUKBLgxe8myJGPlra2
 +J8xwWuJqKigv5EO9yb22rPqX4JUHUQ=
X-Proofpoint-GUID: PrgqbsJZFYT8fuAlDn0Jpge2off_tATN
X-Authority-Analysis: v=2.4 cv=DoZmPm/+ c=1 sm=1 tr=0 ts=6a31401d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KdsBoOkKT-vHJQxM7ZgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: PrgqbsJZFYT8fuAlDn0Jpge2off_tATN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDEyNSBTYWx0ZWRfX1xUrV8n+Z60L
 m6zywad92R0jprHhZD//iSoTc63+nwbkQa8LZLvKtxrrQr0sC81Nb3aMY6jEcHpC4cFEiu9Hek1
 uVu5/k7NuOVYSBq/cmXunK4IDzxN6bZaWLQK1R+OfJMsL18JDzraHGqVQoiLb/UUZnySHU0T1QI
 X9hkdayFQ0BPLIuJ2Zd9mIvt68KD8EIMAZT69mEa6M8gORDTICzaLC24DxmxLw8U9GWxoTN2su2
 gYzHnt9zxyLv2XL2ZXbinYgxgJu1RiHjjkOFdGTWG8h6Mik6G/TYMHUD8qVXJ6pLp9wjB/cuYV3
 JAmPjKKbdqFpVXf2p2ahEFZjwzLm9lOzIL+2sshDZYM8+tLm5l2V6GD+z9fFwMDjTTpa+eAlV8U
 pctmzvjw1vI5/tdg6bXrZX5qpzJa3S/nVYZUIiCS71ArILlSXI1BQeO4VwadFNxIBa8E4e1ap7I
 +cUrZQyCjX5hTA7zxBA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_052255_227653_D022324C 
X-CRM114-Status: GOOD (  15.85  )
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

On 5/21/26 3:09 AM, Michael Scott wrote:
> The l12b and l15b supplies are used by components that are not (fully)
> described (and some never will be) and must never be disabled.
> 
> Mark the regulators as always-on to prevent them from being disabled,
> for example, when consumers probe defer or suspend.
> 
> Note that these supplies currently have no consumers described in
> mainline for dell-thena beyond the audio codec (vdd-buck/vdd-rxtx/
> vdd-io on wcd938x), which can release them when the codec goes idle.
> The board-level gpio-fixed regulators that feed the Type-C retimer's
> VDDIO and other rails are not described with a vin-supply link, so
> the kernel cannot keep their parent LDOs alive on its own.
> 
> This mirrors the same change Johan Hovold applied to every other
> X1E80100 board in a March 2025 series; commit 63169c07d740
> ("arm64: dts: qcom: x1e80100-dell-xps13-9345: mark l12b and l15b always-on")
> is representative. The dell-thena board file was introduced four months
> later and did not inherit that change; this patch closes the gap.
> 
> Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> Cc: stable@vger.kernel.org
> Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
