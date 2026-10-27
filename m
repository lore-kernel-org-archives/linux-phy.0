Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F540606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 12:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GPv3KEJZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=c9PutExw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=i5zN9P4Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cnXwRpVIEhcVIamDK5B5+FY8XG1XyQqZFjrvj8J1DjI=; b=GPv3KEJZ8XNjip+VXGABgvuIIQ
	T9V3tZltp4qVP/JizPhmvlVMtqCn/84tF2HgnuQeprvsmxOweTNriapAMCayQLXDgESZt65FYkiHd
	ryuXUAkOiYZLmvsx3H8Kx4lImLLuZpWdPWXV386uARaumeB26lyS2dUavGrFVCxxtGT05QG+iBn6n
	O8yw+guwbM/laI+DzKz6JRitKjcLnemCqZgdMt0D4vBqgxJZS74tt6DBarRb40srxSxYUnFu/KecF
	3xu192iCLLyfQzsQLl3uVBohcZMBhEOF1evkq0YxUnDTY6YpnMcMSBikYVtb9hE/jJJ7YgpuzIVvZ
	buDVl48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLgBe-00000004cGC-0HIS;
	Tue, 27 Oct 2026 12:21:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLgBc-00000004cFg-12Og
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 12:21:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAdsP11973264
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 12:21:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7TtjdxphCRqlCdR6E2spA/NhRe0oAq26D3swKgGExww=; b=c9PutExwq5FooRjV
	GyCqcBrVhxyKBfajKleQkBGVunTQigizDhQAHpznoGKRJk5CyXBSJ1jMMGomxytq
	JqPoNwH00b2JtOQccD8pUjFWwKEtAaer09ippaoT09UmAc5AKd1bpG24gI5pOuqM
	Ij/vKGERXj9msKYG4lwpsPr0q+DMslB6SY5tUBdnS+GxV8SDcOpTsCPDxAawikQ5
	1Z3qRUWiCp4GkbWfCSTzx79vknqz5nflM+QPs65m4N1EZpBO9+Fe96xoG7Hl4jzn
	GNMx2OqFIDyWNLcIWKwvcSY+ac/b3JSsHI9AKixfGtrmKvrX8CweufJh5DFj7Jvy
	tGbYrQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjst1ggjs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 12:21:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ad30487d55so5864604a91.2
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 05:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793103711; x=1793708511; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7TtjdxphCRqlCdR6E2spA/NhRe0oAq26D3swKgGExww=;
        b=i5zN9P4ZThIMGtu8R+B3XbLE/his5CA7x7Y8gyT33zhDq7mG6KZeLx8VKtaTXnD31F
         QC6iDALFprHE9/8lpt5ZvctEwzAZOKfeCyY0H6CsQ41u1kNqEfaly+ib8VAudMyWKeqv
         aQNmGDj+6NQnMmGoHjRMjD+ECvEhkYChgiKf6/Jt5zqQVMrYxe3uyJNpDrRavXyZL4dd
         L2ci6m/8m2BIbvc4hm6D/A85v3mN+0sIhiRj9BrSH31rHzv4+y11GJCbReQmSx7cczWK
         oBhaXwLHY2GxHQ5m3Munzkmk9MC3A5PqJIzrxYtWr+MAeF5vU2vlSzBcPGv5XusuB+9q
         7i8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793103711; x=1793708511;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7TtjdxphCRqlCdR6E2spA/NhRe0oAq26D3swKgGExww=;
        b=EaLyr7LXO3aO0THLX6KUU/WMizNO0b/hTIXYuN/xkeJ7/72oXlZ92L0j496WJKTd8F
         l0ZJ8p1zOsfshbKSAZ1Y0s+s1qLtIVjgQnca4RJbXXYHCB5hkPc242cGaodj5qlUoZIg
         CTYIOUwEjHrKbCnAhkxj4San5o4y/vE/AZsRcRyxEdV/n1NIvP4lAE2ZR74QN3vhmteK
         87tm2R8+iS4Qrw9KDAAvxIeucS62ucXmOqQeIkMBtsGv8LJLadzso+SIkdi3j8dCHye2
         MoznM1As1Sq9gTl7Z+r4DZrznlyKNdYzHie7wKJLkXk0K68PhotxUOfxEbiukjDjLm1N
         hVdQ==
X-Forwarded-Encrypted: i=1; AKwUvBwgebIdfROFfQ49YR/5y6no2TR1ysHTn7UwkiANF+2+KNdsNIZBcksK330oS94sxGOrYJFuRdbrlEA=@lists.infradead.org
X-Gm-Message-State: AFq9FYKK16VfSozSmt9VTb7BxlvaWrbieuXD+bnuL1usIgkOexWBeGUl
	bTM2Aoei8w2wFEbaYvD6Yz6c8AaSb/ynFF4GH2QAciutuAB+TzfQpdPotopo+qpx9wdI4AKVibY
	bpY5JAKBxqqhXVfT3LjOwUEivVpnynCTBA8hjWfHgLruQKKz4gwC6luolsjUrLI7DOgDJoOcnfR
	cZ
X-Gm-Gg: AYBFou2YKLA+oz0P/ypyzOS4KEvejNJpdnEGWzoLab5djaBynAfa5o/qeWCYTylHvyz
	9+Bb7fAYwzONm56/0dHqUK1Z/+MlBtcsYmVQhXJRNmF7y3o8HXbKAYLlreE7sJD4+0eieGy6W9j
	mMg/+SJDxZKWD7wT/cBWBV5Sydr5YBagh2fS8hIZK14BTbKoOrl4lCNmqsxG6taSUZGuByHAAJi
	KWXdLirPuiVxeeoXaOIQYSFsWTS2DE+JrOH8qSZeOWVoPo1GBES+EURBIrQ9p7gBXad0myY2VzU
	vSsU4gT+pVPUyOGxAew0/gfmRgo+6Y0s7oY0Y8lyoSyasU/TrNneLZf2QDiQgmkaxIAHhqT7BBe
	0dooESRoH9UYMkLo6hLkRc851R7qLlecITwEniMVp2hnwM8//n0ht9CCpSwUZlgvKL4M=
X-Received: by 2002:a17:90b:685:b0:3a7:9413:cfae with SMTP id 98e67ed59e1d1-3ae36a81273mr2151572a91.42.1793103710994;
        Tue, 27 Oct 2026 05:21:50 -0700 (PDT)
X-Received: by 2002:a17:90b:685:b0:3a7:9413:cfae with SMTP id 98e67ed59e1d1-3ae36a81273mr2151551a91.42.1793103710334;
        Tue, 27 Oct 2026 05:21:50 -0700 (PDT)
Received: from [192.168.1.6] ([122.177.241.224])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae4041fafcsm4755328a91.0.2026.10.27.05.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 05:21:49 -0700 (PDT)
Message-ID: <76f04cfa-33da-4d4a-9fc0-84427977f9df@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 17:51:43 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] phy: qualcomm: m31-eusb2: Add register
 XCFGI_159_152 for SE0 recovery
To: Peter Chen <peter.chen@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HJ1WhYtv c=1 sm=1 tr=0 ts=6ae0975f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=VANyJ50yWUE6IziFVoGcxg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bCQCG6ZwM2LpJ9RowfEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 6P1eRNmzMZaC8r3wZQVmhLRa5TvtFQcL
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0OSBTYWx0ZWRfXwqqagzhg5mnj
 PoObIswTcuYp65xx558P6dxNava0Bv+WuU9UtjOxEI3UDQ+A4e7VxXPiVaHZk7QRkcf/sSrQiPp
 /uqNy3n99AKB/T3QKYC1GO4eNQF7sB4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0OSBTYWx0ZWRfX5DWQ+HPyssmH
 I3JAAWZMtNH2YAiJrPUG2EtPdE76t97ywGDUWUOzZhcRR32WIgWuIyVXjrStgv5Xl+F2tI3ssoP
 RR7A/DBzvywghIAJRnmLlC5WBZOA4l/eIvYZhGLfNhxS6b1CDST0w0skgu3jXc8P9bgtJD9EyiQ
 q3m8YlYvdmeRnd6CNm4THvAG5HO24jSMu3pwlSbJaHLFWi47NK+u9kYzFCtVL0whmLvLncT7NhU
 QRuYFREw9LTTEzzcXXVKKHyQc4lrZirIVDAsQos/TylouqIiWmEZj3P+oTOa7I8PNBYBeBHvYbL
 B/o9tfEJ6kHGw58RDFs+n1SEvIZPIn9kwKRjEP4ZOMVPSN07GCWAuNxTtSBFAfkKyNR4ehJ340N
 izirwLPGG5yiPzyXKJD7lMQqEsiPYieHPuXI030AAZILgjbCYEMO4tjUBRdfkmuqUUV+z9rmAk1
 4JU0HOu2nA3gT9UJBnA==
X-Proofpoint-GUID: 6P1eRNmzMZaC8r3wZQVmhLRa5TvtFQcL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 spamscore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_052152_296973_E7909EDD 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/27/2026 7:25 AM, Peter Chen wrote:
> From: Elson Serrao <elson.serrao@oss.qualcomm.com>
> 
> This patch introduces support for the XCFGI_159_152 register to enable a
> hardware-based SE0 recovery mechanism in the M31 PHY when operating in
> host mode.
> 
> During PHY initialization, spurious pulses from external devices can
> interfere with speed negotiation, potentially leading to abnormal
> behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
> controlled by bit 159 of the XCFGI register.
> 
> When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
> activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
> before entering L0 mode, the PHY interprets this as bus inactivity and
> resets the state machine to its default state. After transitioning to
> L0, the PHY resumes normal operation in accordance with the eUSB
> specification.
> 
> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>

Reviewed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

> ---
> Changes for v2:
> - Add Fixes and Reviewed-by tags
> - Link to v1: https://lore.kernel.org/all/20261020061811.3127511-1-peter.chen@oss.qualcomm.com/
> 
>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 275df38256de..8d954e772585 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -56,6 +56,9 @@
>   #define USB_PHY_XCFGI_7_0		(0x15c)
>   #define PLL_LOCK_TIME			GENMASK(1, 0)
>   
> +#define USB_PHY_XCFGI_159_152		(0x1a8)
> +#define SE0_TIMEOUT_EN			BIT(7)
> +
>   #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
>   {				\
>   	.off = o,		\
> @@ -88,6 +91,13 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
>   };
>   
>   static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
> +	/*
> +	 * Set XCFGI[159] to enable SE0 timeout mechanism in M31.
> +	 * This enables a counter which will assume bus inactive if
> +	 * SE0 is more than 2.5ms and reset the state machine to default
> +	 * state.
> +	 */
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_159_152, SE0_TIMEOUT_EN, 1),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, HSTX_PE, 0),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, HSTX_SWING, 7),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, HSTX_SLEW, 0),


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
