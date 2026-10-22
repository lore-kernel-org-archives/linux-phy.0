Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F96606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Nj4MH335;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=I1YdeBXv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=afqCo5iw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7eeopi1P/SB6etEB23QwkaPxNbIepFUsxCtSpMJa+Zg=; b=Nj4MH335SntVxKmnSV6+zd1FQ7
	6i0ctXiAqutrwWE2cZS6zr9ustoA2JhiUHX9hyg/ZSGjRyazUwbboe1JTomZc1U+roDEaD+eTRcsW
	ZMSIOsmJa/vDX8/qLGjkw7VhFDcmfFw50fl/N0/ieVS/+/P/lyhZhIkIATAQM5NCON+0nBJ2bgdYf
	Bnyp4D5fHhIslSiqcJWQMN4JWzUJ7Ae2aGRFW8T0BQCgHekuw1V9ObnvRHhDYOwuvv3WXIsUmCaNE
	mlYsE6Fv11Ypq6uQ94tR3Y0TQNKVoDHMQswtB+ZJfA6n3/JTlnc7dM5yZiIt8+cUdl/UmDGa5jgxk
	gkRP9b0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqXC-0000000DydL-3KPm;
	Thu, 22 Oct 2026 11:00:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqX9-0000000Dycl-3TRm
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 11:00:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA00Sr1962218
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:00:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3HGmCF0ASxOLS2y7H3kM1+aMPDTdYvwreTI3xARkJWM=; b=I1YdeBXv3GuA32iK
	GOcW83tArQvzILS3tGxCosSMkhqqGq20UjT6lRKZKZ7VYR9outJwfKR94/w6GwMk
	WNeZlmaR2M8acxdbHgRZ0IFon6PiU6tfj7JQjkIgxUf7x5zQqhk4TdPhGYd1D8gn
	2TbpfxV6Yu2hSgmU+fe3nKvShe2tz0x9bv52c1q3V9xQedkcfxv/gnI6ZeFTJX2l
	Zut4tvalxDrJ0Iw3aiRM4QLe0uZBQ1LqVGv7iU+3hfzyI7DZRsrZzK9JpePny4z0
	dOuKqMKcfymkNxtmkNCqhyOmbmBF3+C0iUQE6UN3TLObTpVIAJdH7IFhkZ3Pks2B
	Sz+wuw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93ajcqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:00:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93ea6b66e53so42118385a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 04:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792666830; x=1793271630; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3HGmCF0ASxOLS2y7H3kM1+aMPDTdYvwreTI3xARkJWM=;
        b=afqCo5iwVId1QPqL0rFuzURy6+gB6EEf0vaAPCv3hZlliiQr32bw9txWriH+s6MIot
         a7q+OLjH88jJT8OsuI0CdCakr+Pb5MGkZ0LzHyzgz96ZwPPI4AFFm6sWFkHrUB6N0Qd6
         5wwfUkz6N0z9Y2qLyRHk21ykSGBuBRxOpdaEfTvRb+G0/UcQvGrQ7WSL841ipr4Etufb
         aS/LZUVUHjp5civhFseqk6fF0tB6fBMPvuXKwYPDrsd3D7KW03873bDEcJsAz6CzuqkI
         8X+cNKEBNeHSIN71iIbuGn8sfRSsBNV7DcP8KztwwFtY6z3TwB6n4HdcJlOB0NSiKOKf
         n2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792666830; x=1793271630;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3HGmCF0ASxOLS2y7H3kM1+aMPDTdYvwreTI3xARkJWM=;
        b=GytOwG+Aq6fRjeVWFtGNh0m7Ab0M3Z8aK4APC5LKns9pFf1mGaSYd9U1BrPoIIjSV/
         gTmOmTOlq7oT1rSh9lgwVrr30P/Im1oOr2QhgQdRR1ZwDPuwkHk81HgFoWVsKGrMSI0c
         9KPwKdPX7BEj4V1Zs/V1zM2vOfga1K2YE3F/Pp6pL6zw5+FFe2Vgt1de4tprW6a8nehk
         6aZfjEdm00ZGPM2zCIzATABDyw3uAy5Uyk/6QUfy0mCQXFBavpVuxUWElCujqaI1pBKj
         792rNg0le+tEVG5o+g7MFsEGEf+1uUL4VH/bRM3NhYdZZoAdjK3yFi5LdQnZM+SANAXz
         5q5A==
X-Forwarded-Encrypted: i=1; AKwUvBzf20GkgprOu4xi8ClSn85SY75poqhPK8ogC8WaXg+ci/w6fn6bIUmayXLgOGLkXH3MxfXmV61gNgI=@lists.infradead.org
X-Gm-Message-State: AFq9FYLguUsFudxAYEzvuVn+SFegp6SndPj7T7K+PzSRo6KmafJX0XpY
	h+70NYIZZ9JPwt6nZxU7c+VmKcaLqgpatUtVlRtd48UmM0eqei4AsXM5GDFG3wqfohFV7qWDUZ5
	mZ3HKcArckvD6e3cuU15pWSdOA1809J86Up/WbS9+MMH+JZUTPfM4d5SBobsXdLDL7xnx
X-Gm-Gg: AYBFou16yUvuHC1B75NxyS4LrjIss0+CRmouDE9YhMklCYsfC5i7EGTp1TLwqIITVoT
	iz4ERLabpHp/prPRgha8CDr1r8pq4q1j2h+C1WDeEFWrENT5okDnyBPB2C20tk6gZRrMrx9dsGB
	zCBck94G1NcsLdt5WnzfnKXW5n2V6ya4eihV/KAk7664UO/IQg4ydbjsA4W3IqADSSwyVAwfiVS
	tEPmPHBhb7bJNLCFqyEAf9WJHHLxH46Yp+70GK3ZaLiQV6T2/3eEWlcBXrdelJqxwEMG2Eobogn
	pjPQ5NV4HrYEX1R+x5zqRLCqf7blox/e06BrCPQdk6p7k8loAqHo1J5CTVUh3itLCp0v5lpuSXY
	aXnRXK0D2atYhSWJOjBP4/g==
X-Received: by 2002:a05:620a:2b95:b0:939:eb09:4458 with SMTP id af79cd13be357-93f57f7af95mr1077438585a.3.1792666829360;
        Thu, 22 Oct 2026 04:00:29 -0700 (PDT)
X-Received: by 2002:a05:620a:2b95:b0:939:eb09:4458 with SMTP id af79cd13be357-93f57f7af95mr1077433485a.3.1792666828987;
        Thu, 22 Oct 2026 04:00:28 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a5ba26csm90719666b.62.2026.10.22.04.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 04:00:28 -0700 (PDT)
Message-ID: <d54b50ee-f0c1-421a-9d1d-5dbcf84d556d@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 13:00:19 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/11] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY
 init and configure sequences
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-10-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-10-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfX8niTanuLwTb5
 4FolfdNDzVWyp9Hb8jPUQpNimre5JKxkHC5udxQdZnUjIOZKhEWqVu48CYfQb4lEagkUSk5R1Q6
 8sw6+7bxVm3Pr/62AX4zlNkUuYNaBo5VxHMQvpKiVdSqq8M5Fu9OpVzn5i5HEe08IePH1myY4H3
 DRpLt/Wk3BM8TxA8HJQeHWPab7DIZaesmB0I0xCul6Wn2/5esVR0wTtT7tREbugHUHyXzYdvj0+
 fSpo+4r5yy/Wl9/OOBmugLrxG28TGfPOuYnQo6fPay/O30L4m9JMUueOm6YZjI3MtoTtokC8Hy2
 qmzt/wOoJKEA7wYrhcNpWapFDDB7xSadtXFt16STQzgv/V32WDIDGW+sXUd7p4RTxoUYeSvYyal
 GxrBme1RAiO0uMnzy1eMM3DHOPog8LCGDLP2pK3xAdz6XxbhBvNCANxKVu5lB8qi+0SQGlkEQMV
 N9cVYdvzuYVUIHNH1Ew==
X-Proofpoint-GUID: QkjYnFuO2Qs_1T3mP6-SCvKQ2RjuzcXj
X-Authority-Analysis: v=2.4 cv=feg4WEQF c=1 sm=1 tr=0 ts=6ad9eccf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=igDMAPUHuX2-SMk_MF0A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: QkjYnFuO2Qs_1T3mP6-SCvKQ2RjuzcXj
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfX6VJNOx9uOgVX
 GOWNC+JEJc9d72iFO5uhb/EOJjQjpP6zlRtiDXgaRVilgbcIJx7cnF3W0Sxg9bIy0ZbvPBNtdUV
 EJFkP3Xn//p2lJHTXK84T2gNNMavFLo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_040031_877571_48191CEE 
X-CRM114-Status: GOOD (  15.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Update qmp_v8_dp_aux_init():
> - Add CLK_FWD_CONFIG_1 initialization (0x3f) before power-down control
> - Replace PSR_PWRDN with LANE_0_1_PWRDN and LANE_2_3_PWRDN in PD_CTL
>   to correctly power down the data lanes
> - Correct BIAS_EN_CLKBUFLR_EN value from 0x1c to 0x17
> 
> Update qmp_v4_configure_dp_tx():
> - Correct default TX_EMP_POST1_LVL value from 0x20 to 0x2b
> 
> Update qmp_v8_configure_dp_phy():
> - Correct 2-lane and 4-lane driver enable values to 0x30 (was 0x10/0x34)
> - Add CLKBUF_ENABLE (0x87) programming for both TX lanes before driver
>   enable writes
> - Add TSYNC_OVRD sequence (0x03 -> 0x23 -> 0x22 -> 0x3e) and
>   LALB_RESET_TSYNC_EN_CTRL (0x0a) programming for proper TSYNC handling
> - Fix QPHY_DP_PHY_STATUS poll to check BIT(0) instead of BIT(1)
> - Replace post-lock TX_DRV_LVL/TX_EMP writes with two COM_CMN_STATUS
>   polls (BIT(0) and BIT(1)) to properly verify PLL lock completion

If I didn't have the LLM at my disposal this would be really really
hard to review

[...]

> +	writel(0x87, qmp->dp_tx + QSERDES_V8_LALB_CLKBUF_ENABLE);
> +	writel(0x87, qmp->dp_tx2 + QSERDES_V8_LALB_CLKBUF_ENABLE);

The HPG asks to first write 0x8f to first

[...]

> +	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(1)) > 0),
> +			500,
> +			10000);

The programming guide doesn't ask to check this bit and the way I read
the description of this bit within the register, bit0 already asserts
this being true

The rest is OK

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
