Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF4BC4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 22:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9rWB3eMkD5cM/EnZ7wXa6pOIcAshyufgw9yuJuoR/M=; b=X+FfHzMJw/5Np5
	pyY/WjB1LImASMJzzk8aptoNASGjrA1XX05kN86YwpXZ0XKiTtpfsbHp0x0sMoR8lJhK58bQAKUYC
	NvzqOYowqZMU/3gUeUCqGxnSO/JCi+7+9MY2AiFDQ4ecnBNsUH2ldXSZY0XWL5gEeJ2yBBVe2RZ8l
	e+iEx6UyWvGtgRpbu01szkd6HWMI7YfmPIB1auK0QU2xYZhtJXXBJsn6flsFgx65j7h9/rpjS8ayU
	VUzPf9Y3Q5w2LmKeJU5xWpALj46kd3Q3xYd40ir+5Sz6FSSGfsetNahT9g7WR3Yti3lkAUy7M50n1
	aY6IvhYWtbASpEWXX6rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJEm-0000000AWsb-08ST;
	Tue, 21 Jul 2026 22:46:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJEj-0000000AWs5-2Mqq
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 22:46:54 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZ63w3061826
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FBLyKhH6QlZwbtDhRtvyYm8q
	UDIOFADLvRXOHopvWq8=; b=oW3X1PeSxECCkuaTkjTjy44Pj2zcExcyYQmZPbD1
	nJyrbs+USExMnmER8cgHdd4eq/U5g+5iWejlHlhoAUfyH4W0byxCkFnbQJd9slwf
	d76FmQrdSkwjacQm71ggWqbXs+8bvqoqy9qP39WIgTj3RHp7IEW0NkqA/5Fji7z7
	iYeNEhw+cnPM2qv6fePFLEIXhJ8MACpNJblGnf1qFVuBRXtfJ4zUH3YDPhgieQpv
	8vD9YxZbZYT1njn9EQidHQwzC9GRRznoBpI5OHFnz/lexsgoOXEFRQm8Eo1Ptb0s
	ctYtkgvdGZ5Jn30xSF7E4kaNVJHJsbUVqdbBj9emlIPdAg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6a94u3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:46:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1b4d961dso98390721cf.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 15:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784674012; x=1785278812; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FBLyKhH6QlZwbtDhRtvyYm8qUDIOFADLvRXOHopvWq8=;
        b=bUfacDtke1E52vivx3j8hIV37CwWx2IMXGdqF6JVB6d70Q+lQbMhHpjSPN3E81TjBi
         /fPzbcSg3SnmeSfM5NU1n0bSPTsaop8JmcQxz/mKPfhRQbdjRb7ut8g1nnF3GMXDKs9a
         q2VBRrvp78lAgLnLizdZTA/XbjVSbbb0ii6rcH2VwPHOJQDLMk03rB33ZmQ5mZR6ZJ53
         xgBPIGCJZe3HrpctP2QlA2OpfFQMmG1lE3lOYtxVWRtCwmLpIFLbICKeKxcxkp6b7pLG
         DfeQKMvg67dSyJGf763mEexMy8YohN/Db494IjXoNyWwN/TvL3boHt1UFDaVD9yqSkcI
         sh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784674012; x=1785278812;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FBLyKhH6QlZwbtDhRtvyYm8qUDIOFADLvRXOHopvWq8=;
        b=OFLkfcrKdt+9JjInieXRv4SmGZdtlRxJuBjWCsXjgp0rtA0DT55CqlVxuIioI74UDz
         pj14o06E5SgUFTh/dlWHEMYVaG6B8+BfrPDsSXoAjW8k1MGB94pKFXrlmJukJsFTfKxh
         lUtaT33s0pVzimjcMDUtNKX1l3Lg3hcauEkpD/Jl/sfMjfJ1k6p3F36C0o75ofnLrY5P
         KGEHM6H7RsB30KX7KN92JTFwc/YEIvABwsjzllH5B1LUfY9AuFrDCvIXdq65guzjWzfK
         f2b83ImskY46eCbCdcXDRBhsn/KkE+8bp4jFZ89kxCIZu53+ZVsaG13pu03QbcZ9qGbR
         Jmlg==
X-Forwarded-Encrypted: i=1; AHgh+Rq6LCyarDhXN7WcDJp7yGDbkNUqZXnLJymO9K7Dsx+jzEqhNbq71esCEeUJG8S+5GVPxJ9Nz6Xmszk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb+UScluVFlCvkZRwh4YJ7iSjzBAuiLLLhEnfhF3fuwhrTXdVu
	+rYIXRAtmI24e+w1T/YscUpTskl7jwJTYfje10zLnl05WoZFiV+1gIZPJGHl/X4uJN8I154tfnB
	+27VvVwYfBlyJaA4A8XvxQYLgXgFIspVasnPe+w85zm6ADTp0kWfSjlafyBh3ZypkSdK4
X-Gm-Gg: AR+sD10NNkTEZpxqqA6SNDbK2lxfis6G9n9aOu41ZFUyNDXdEjmXSN+a4NecHUE4MGd
	ZgtKbK2iw7BgMzpCIYFjlkV2PUyzTOWzav0pT1YqrEsQcmPtTFBqkqafJVRbcA8OVXj1LRRtmOA
	pLfyB7O5Oi4BFsS7Q1c5sXfGfSMcdr2q4SYg4u+mgQcYZ0ZObYPXAsezxfgyFiutZE5UotsychV
	kWp8sdg9yPUhYxcNUvarTWHWX3O7FCzRRb91uV8anoIXV7zHUKL8L1lD5M0j3dH36d988gq0A2k
	M08A98d20ZBDCiJFqqJZBG5bBHbPLj+IrsQMxpCvm0Dgs/Yxdk7TQoFBd3ergyrTBMdEgA5al+b
	zirln6UIXXPHjbs/jgXXHYeOj0ur8BvZFqS8ivrLvNQgjx5i7JX+YtqycSlfxGaKtt2iMZ9Lew5
	JsJaPmxypq+pWj/A==
X-Received: by 2002:ac8:5a48:0:b0:51b:fe30:b8d5 with SMTP id d75a77b69052e-527a8a4d134mr17061701cf.29.1784674011778;
        Tue, 21 Jul 2026 15:46:51 -0700 (PDT)
X-Received: by 2002:ac8:5a48:0:b0:51b:fe30:b8d5 with SMTP id d75a77b69052e-527a8a4d134mr17061531cf.29.1784674011351;
        Tue, 21 Jul 2026 15:46:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9b8cd3fsm154169e87.1.2026.07.21.15.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 15:46:50 -0700 (PDT)
Date: Wed, 22 Jul 2026 01:46:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: esteuwu@proton.me
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in
 qmp_v6_dp_serdes_tbl structs
Message-ID: <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDIzNSBTYWx0ZWRfX/TteRKx8OsYB
 +4o1rDssAfz+InRJQYimIFVAKkuEPmnCo1uk4bgsp8wetWtfupXmxUfO9zPxC4hs17zcfTWAKv5
 sqn6w5g9L7EjeYdKqsFLPh0oJF1ZB48gLH8vTUdEgedgumZ0P7y8tVvPQ3q/vHs0DlaFY6F7GgX
 ppMCLc9DkNZMuawS0qPFxhFXbsQGeXQDMaXydHGFCN1fC+LdRXZPcBf45VQRSTr3kjfGWaspWef
 mdyX/6ro+sdHvsUeHGTVZ2r5fDK/hxTU6qxmOhT9xc3Viibb9RijXUh89WpFPFOjOeC4vdTG7eX
 oV7ZJv4iF/vCXY/Ddlvhsnr6+9Ov3Shs16eTQxVoU/XHlT66UpA29PkZHkUK6A/TtxYmvAgUnkf
 k25bUicjFFkyDfS/LimPBvHLCFj1TZveYy/LeTTXNW85cKMSJXY8FEeVMQURcPCbo2tTZT+n5rT
 4JvRKiL7ewZO/HHUsrg==
X-Proofpoint-GUID: HF59p6fwoEwq5l8hjjdLjUOuRiNfB-Ws
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDIzNSBTYWx0ZWRfXwFQipw5eGC7B
 oPeJLfVWrXF5ZAFK9FddlHzAytObB/fv6Q2LaFtsli58lqWz67GdbpsPDmpAskmldMeu7Qa90id
 2igJbCwrmhMnmIRZcSqIbomYcMQYAwc=
X-Authority-Analysis: v=2.4 cv=HvJG3UTS c=1 sm=1 tr=0 ts=6a5ff6dc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=ScSKZHR6t8cGUoQXxYQA:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: HF59p6fwoEwq5l8hjjdLjUOuRiNfB-Ws
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_154653_718810_B8D8659F 
X-CRM114-Status: GOOD (  17.00  )
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

On Wed, Jul 15, 2026 at 03:06:55AM -0400, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Two versions of PLLs for v6 PHYs exist: v1 and v1.1.
> These tables only cover v1.1 PLLs.
> For serdes, the difference between v1 and v1.1 PLLs is the value written to
> the BG_TIMER register.
> This register is set to 0x0e for v1 PLLs and 0x0a for v1.1 PLLs.
> As reference, SM8550 and SM8650 SoCs use v1.1 PLLs.
> For RBR/HBR/HBR2/HBR3, most values change.
> Make this distinction clear to avoid confusion when adding support for SoCs
> making use of v1 PLLs.

Checking the hardware docs I see no mention of v1 or v1.1 for these
PHYs.

> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 90 +++++++++++++++----------------
>  1 file changed, 45 insertions(+), 45 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
