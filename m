Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA879EE208C
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 11:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uGCuMla18h5QO6eLcukUYM1Bfmfwl9YOXSFXqcofvs=; b=t82oMWlMVEYOn6
	B73/DwytFMRBU/xs/IWZLd89w9aMVTkpyS+1RWa5ElHllKoOQEwcUd/2hqzkYsS2Lwr+REy6E/xEX
	YB5fygNhtOzH9toiJLbCnqlW0AmLqUMmgMVKff06Z/vwOXtSC46xbeHEq4brfCVonAG6OEsT6lelY
	PgY+6nwAdR5owKmOc1hM6aRWPVcPMmfal7XHupQh0kRxjBuFTAEkn3VZMdEzS9zjPRFeFrIZ+C33B
	6JQxDMkaHXjo4+WAIEneznCNwqM1hXY2+j3rvcWiHrNDg2co2vr0VRlzvI7IcDE2nwUtQ+NgsMHck
	nfFntxnOtu0rPyyYa3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJbh-0000000BDCx-25vI;
	Fri, 06 Feb 2026 11:02:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJbg-0000000BDCY-2FcR
	for linux-phy@bombadil.infradead.org;
	Fri, 06 Feb 2026 11:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lPVn62jF1j24nBmpNMUx9tZxl1Kn8T7Lu7In2hZBSRU=; b=LO3f88s/SQhM3EpMiF0lMHzyxi
	OWrektyoqhrelIqRdoAOtqSVy3G4y9yODmrPeSqBQZv3cLX0h01D3D3SUdjUZR7CTzLSXgzbGSGE8
	xTfFMQIHNCwDaCy2zH3veHcIYAieBYcLAXBeIGZ1fMBdJMV3u+JMVMdsk0qnoLVQBOKkEEz6WTFjT
	w4d3jMC2whpxgl3mhj3GmKepFru+nrC0U4GgqS2IeiMWyJrfjbmIPIA+/bn0cx2B1vXaY8VylZk1J
	KKhcSagCzk2RubXoFF1iXLPl+sgydpdjNxynZs//9rfd5B0LPHovXabQNtETEjgde+um7/2grd6Lw
	O853Ts4g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJbc-00000003gP4-0wD4
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 11:02:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167Xff41852738
	for <linux-phy@lists.infradead.org>; Fri, 6 Feb 2026 11:02:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lPVn62jF1j24nBmpNMUx9tZxl1Kn8T7Lu7In2hZBSRU=; b=Ro4G1eX6rvt/VmTL
	pB11j8gnkFz42qz3SClpAm6YIWmxd10fZfpRMjhzd1eQ225/PaRB42K8uWxRMgd5
	ZbdKtEjjtBQk0lklwcePXkIxIlTgKqVmVID6frEGxek6YHv1bBGxqVorBW7pL8HI
	+vz43LZGFeztPZ5wq73HH2zj5CM/9YlDQeaS0zYVcvRbi1MbNHCuvR93wlBtJ5m7
	X7E0uzM9CKrwyXCI5xsbAsZ2xZovRwTLqjr+IWb61C/Mm30Hl629kV4acAlgoQtK
	Yj0vg/mXTvAPcwWK2x+1xYGXpFTsiLOrMFIIcLQkqRh1ymjPoMwlf8yNOvGx3zLF
	BwcG9A==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c148ncp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 11:02:28 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-948bf3b2158so463186241.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 03:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770375747; x=1770980547; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lPVn62jF1j24nBmpNMUx9tZxl1Kn8T7Lu7In2hZBSRU=;
        b=axSlabMqdPUSx4Mw59Xq1mVvpwC6ZSVr8YbkdVphMi1xicW1l40ScV10YQ1Zf183vZ
         67FLKgG3Ym0wlPg+x79fANuTwnfEfpHWV/xRCi/ScFSRnogW2fFiqjbyXJG0eC1YJv34
         GD0VGWzBZoAfJkE9w9hdL++cCsNPzeXGT4XB8223QboIkQelOsUOfpE/c4XMS2EpWZ69
         lnpUNkq1MJ+leWUWbbfus5XsubHgmgRwzymj5TmIqxZ8ej4TMeXHnBSIccOMCChfPH5q
         fL7aaqwTLUD9xJWxEf33LqdUwQt/Y+bNrfzMbdPUOvvBDhkZQRrO02V0UlDlIunrNdoG
         fiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770375747; x=1770980547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPVn62jF1j24nBmpNMUx9tZxl1Kn8T7Lu7In2hZBSRU=;
        b=VLPp1AJBpxzGDtEVeLMrFrvOtCSXZNphBShaOh/aSA8aGtlzd/Z2Fqz0vi68f6qQvR
         zTPsu3QtsRs6byW+AHbCAwVG0TgHR2R52EJ/K7iFUiolcc3E70VuqXOW8kHjsiKn0BPD
         DEzVljY5ooetTCrL958G9gmZGojawcAAc6baaZU4glyQFLCfJ5SGFP6+TyuOdbvtmWKH
         uzP7wzYQUHaVbpnKXOj9rz8uWO2Qnz1cbOre9RdP6JhHemIlCCSrRsQmSk6kYOkf9AP+
         7/lop3R8gqqExG+OkuyzdNGqW3KmxkWUca4VOKk9lbQUprwwXi9iUelJyBrux46zb4kG
         ZUVw==
X-Forwarded-Encrypted: i=1; AJvYcCVS6AFVmBWJ2A1W3S4VO68Z5UWK5PJ0JbTWfKhUmfyNtqSupN1kcrIkyyix04D1D9k5mrBB9ZcNpgI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvK6qn7LSywSVaH8XPk9MHT5TfJq2Im/xT+yX0hXEfAdIz2Srs
	m1PGK5qOpbNrozvrQWZvmYEsAfobSVzFeL0k35qLTFpstfTdgeVS6M1OTA98sryqTUN/fLUdLmp
	+xJP+EabEm6XrXDuhkdneYojE0PYPh8pvJBfdxFOb/LEvxJdMtKt9VEMHZMfY/OECVQ/Q
X-Gm-Gg: AZuq6aJfazQK5DbhWcuA7mcvbSAr2bLHEv30ozI5K573kC/su4IyepBfCjYXw/+y+RD
	vMkmBuGuLw325ZgDoLuTHAKY4ZcFaV1OPKIATY/Iop9xhlxzxwQ8iA/lyeOdKUTxoRq0fMMINj5
	di0dMWWKjcrocBXbvTq2myqgwVxjIfinOKush/u0MiCu2V82W5LELGCqDlm4w+4GNw9r1LCFNSX
	V57rK+CH8TOSoll6v0YP7ydFqOwaFGQgLF16eoiGGNj8q+yJ2kcFQTSlMCaJOzEV/el1yhresYW
	HM+b3apb5QSUvWKEx2Ozhu6m5kdqKskmpq2YgIv/z+3emQ23hSBfQ8yqqen15zn54+uL6wrfFL3
	KZS3Fr0NV5QALr91r7ODFDTser0wzXDrwmWDFtLcEQIooI4GNaMC9nohXU3SttUSToCw=
X-Received: by 2002:a05:6123:5d2:20b0:566:221b:c68e with SMTP id 71dfb90a1353d-56705eac59emr291752e0c.1.1770375747202;
        Fri, 06 Feb 2026 03:02:27 -0800 (PST)
X-Received: by 2002:a05:6123:5d2:20b0:566:221b:c68e with SMTP id 71dfb90a1353d-56705eac59emr291749e0c.1.1770375746797;
        Fri, 06 Feb 2026 03:02:26 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3c255sm72414766b.62.2026.02.06.03.02.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 03:02:26 -0800 (PST)
Message-ID: <af15838f-6a31-4017-ae5d-7b5e30f24aa4@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 12:02:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6985ca44 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=aJhC5vt3dY1r1Tj9l4IA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NiBTYWx0ZWRfXzOsfYamm8YyV
 ZZxvQ5n5UnLvQUAwOCDNycir7F/5p+z4Fa12Jw4MOaFu/pn378eHT1hYVey965OwB7Cmu2GtJay
 G3yDxgTQj3cS1U6/kOZFGnY63NybAzZNV0ugKjE08N9rgYpW9dbkUcajIbtDFyP7k//tnrsIqEj
 MvufuMF+1q+osRWmaEdII0B1aoMz0H/SjELJYnjOKQSlFdPzgbM6I1PmobUBd/DXC4oCk1MS0x6
 LjOox/vp1I6wGFiNdJN+1fhw4FmJMCIW1IIxncvfOUEDmRiP1q7u6W9XeZNSmIwLGNQcFfNtY1e
 n0/p5Xu6dS4VTqg8Q6mdDTK1TCDE/Ecz1DYw6MBartM7iOHAw6962YMwdVmzRNSc1BeavqQa/M0
 Al+6+VXd5I8iwa6d8FHVbCTt6qDBqx3m3VzT1zl2VLxHOwqdQSPTqEszWo0eXJ2bJOty5QfZlUK
 34OEJpKMhQay6J0koTw==
X-Proofpoint-ORIG-GUID: FaR6PYfjJHr-LdGx0Mz7zdhGoL0LErLk
X-Proofpoint-GUID: FaR6PYfjJHr-LdGx0Mz7zdhGoL0LErLk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_110232_934881_864E207B 
X-CRM114-Status: GOOD (  13.35  )
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

On 2/5/26 10:20 AM, Yongxing Mou wrote:
> Add DP/eDP switch support by splitting the PHY swing/pre-emphasis tables
> into separate DP and eDP configurations. This allows the driver to select
> the correct table based on the is_edp flag.
> 
> Add a dedicated table for the SC7280/glymur platforms, as they are not
> compatible with the others.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---

[...]

> +static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
> +	{ 0x0b, 0x11, 0x16, 0x1b },
> +	{ 0x0b, 0x19, 0x1f, 0xff },
> +	{ 0x18, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff }
> +};
> +
> +static const u8 edp_pre_emp_hbr2_hbr3_v3[4][4] = {
> +	{ 0x0c, 0x15, 0x19, 0x1e },
> +	{ 0x09, 0x14, 0x19, 0xff },
> +	{ 0x0f, 0x14, 0xff, 0xff },
> +	{ 0x0d, 0xff, 0xff, 0xff }
> +};

This is not quite in line with docs for kodiak. Now, if you have
better/newer sequences than the HPG, I'm not objecting, but please
cross-check

the rest of this patch I think looks fine

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
