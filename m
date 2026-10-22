Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB9606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 11:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LYnki0Tb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VQmtlaS9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BScUOnoe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JyZBfM1Us5Y2+AI/M1IMqfOgwhoNTB6/V/uDIqkcEZs=; b=LYnki0Tb5M4zVmLvgFB+CJhUhV
	xxAqlYRRMqLLLa0KHi/6UzXuAL5zeRBf0AUg6u7S8SKqcqZ2uBiF9sP5/SPSWREawZtyLh4mekiwL
	7y1LYrdRzDePinLPOitGvZ9z4PS19GWvnOjnn7mTA8qP9UP8rgGevEIBAeXz2uO11wPRYEnCuoLHJ
	rhlkOgaeYWjtIWCCBe9rO5CAJZT7CPhxYkMzJYw414ngPqg7TjEsfa4xgFhqg03d6j3DKuwwlrIgW
	TU913w39/W6Ipjq+7Rl9nBpEU5yaDI6+RHH9dh61oprlqMO74GCazAc9QDkWaW7m427byiCxWySTt
	fbdyG/5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqYE-0000000DymV-0b32;
	Thu, 22 Oct 2026 11:01:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqYB-0000000Dylb-0xJi
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 11:01:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA06F63479982
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h5KbZjkHI+qASxHH5C1P7BwhKMwlWe8TrkEBvRsRJrQ=; b=VQmtlaS97nGOD0lY
	HrDLOen9H7Q2dMF1UOwPZnBC1Qsgdgz+zz1bw5z3Sa0cbj8T0NzItgRlWjO+9xEt
	h3LkI8Ufnv9XhhiQR03CjCImEWb2Vtky7z8MSEY6gGDmfBrPfYy2xU80gGOU6y9T
	q8NruAikgGxk728bw3E/9vKum8wtjeNm9Ml9t+zQjKKrTEi/y/w/29OqO1rKccXP
	Pg6W5XHtG0bEr4jplWSIaQsLHuI/BnnjPpEQyyVNxGboCkQe4GF/ebO24P+NtzV2
	r1lnK7RdU2wmmYOc3mHCYpZO6P3BPUm3GlN8CNqWbpqTzUWfsv+Uz/MDsZ+UdY+n
	va/mmw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93a2d0f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:01:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f3960dca5so51420085a.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 04:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792666894; x=1793271694; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=h5KbZjkHI+qASxHH5C1P7BwhKMwlWe8TrkEBvRsRJrQ=;
        b=BScUOnoef8Tu7clyHjHz7oCeCmaBApSr56Al3njHJpZHd65ANEqLs6PQzXKUOZMD34
         MYSPWS+Oi2nl9ul7cKNFQF+24rxtTEw79khx97MjFHEX7G7yCKM+ech0dTICJ+CgaiNG
         opxgruyUdVxvok7PkebE33LWWmHV0CndtxoQnhVaCwvIN1yt35yK635wFZvC1t7DPOTw
         y80KieXhSIlrourWT0+OQ8iPENjw/rmlceukgkhwJR3XrFsZYVhV2iL2ugnk/fCQ/B9m
         RbehPBKP9D/Q8U4sCXK0tQqMBi+CNSd7aLV0jyaX6smmIy8VWdIl8BkjLDUYuyffCKUh
         s7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792666894; x=1793271694;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h5KbZjkHI+qASxHH5C1P7BwhKMwlWe8TrkEBvRsRJrQ=;
        b=UXt9yDZlT/4lu8lk/krqZ4v+1/7rhZZ+UDBjkarEEUqo4f6VQHTfCDsw1GD6kOXYzy
         OAuDKG74+eE2UrMVa8qQhFZRt6Y46295S5p9Mwuyv90zbKERoyy5tIYwcWtQWVYa/v0e
         jXi/xVQ+1vDs4ccXbOmn6fdQF2yx6w4u4x6rfn1sxkexNWvYtE4W64Oml0XaLgB401hl
         hT9ENuR3iCxjZsLs6kgPrLIhXbcmEES9XFv5clN7eGj+193fWixMoZqhNP/3t9BVV5wh
         YnQGjKkHrj62FMoQGj4sqXSZAdxb4vsfUYULS8JR3zOmAirJFPMiom7pBxtuyHLIKu9X
         GLMA==
X-Forwarded-Encrypted: i=1; AKwUvBywjuMxwhKJtpAD9RnJ8DC3mccGFWJv+3blH/8f6NRUdlpWpdo9+GfFzttt9I+KDhV5faD7yXQBQZU=@lists.infradead.org
X-Gm-Message-State: AFq9FYI8JTi3w0VBgCj1uFiudG8/Y5p4ZftIxI0DNhE5M/UbG4gAh+PB
	PJLekFCEj07C7FyQjGgD2UQwWxCO41nEizDY8GtypUJsosJE4GBQp2Ohk1th8MDVULBUbz9nrrJ
	qnAQ5Hf68o1XKCbzEUae2jDrBOnizJZqStvkCjzAg/BN7mupiHmi4I6EvarNEbMzJux+k
X-Gm-Gg: AYBFou0FeUZgA45J/UK6tyemJFmUVuiEKQUr5XuIaNHksHe3xEW3W5LYeLnXJXhrxDQ
	wPs+g7yaPkOsM8IEY/nD225nS/Z6e4x6xXgaybuI4hyZfJJ52FkIB/gJ8A9Jwo1ViwAfcR906Hr
	KDQHEhWqGES/e3PvnrgYXxjsymSEyyx1Sq42Bx5RjdsfCkOStPLYBGs/NSIrOqLukg7qMu4Naa6
	Fqq+qHVb5Ex6mbrnk/a1uAhSwdypQ3DcDiZLOgBA+nWEinAlYiI+H+0Bpd1jjiwOrxBMJvvv1GN
	3lzZB1zdvg04FFAid7ObxCLQrNdO9rkrp+7oGwUrjdVXbyzUxrFm/GQpazDAFMyRV9v+GkgstD2
	2ENM95/Y+X2Z4LlD1wTUJNw==
X-Received: by 2002:a05:620a:450e:b0:93c:c96c:a5b4 with SMTP id af79cd13be357-93f57faf861mr1060147585a.4.1792666893306;
        Thu, 22 Oct 2026 04:01:33 -0700 (PDT)
X-Received: by 2002:a05:620a:450e:b0:93c:c96c:a5b4 with SMTP id af79cd13be357-93f57faf861mr1060075985a.4.1792666887962;
        Thu, 22 Oct 2026 04:01:27 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a4ffd13sm91654866b.20.2026.10.22.04.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 04:01:26 -0700 (PDT)
Message-ID: <d808c486-42be-41f8-9f45-0d935c2a57a9@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 13:01:23 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/11] phy: qualcomm: qmp-combo: Fix error propagation
 in qmp_combo_dp_power_on()
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
 <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfX2mBVkAl2xEcf
 TdP1ySib3q3tALkmg//9ir7/JV4crVeD9QiqDIpOxlDlL6SKj1o9ofK/+Cu3NlWFlAJloRC91Ad
 VdJyeeG2cXNVCzFAXvKqGebD7bHeU3l3HbQeIDXlXrNF9vg9S3HFDlPrreHQK3f9i3WC1/83i1U
 IVFoLigEk38rOb0vCoxVFvepvX4/iWnYS508qcdQj9nV/Qt7BdeLd0WbM0RHoYhwVEYTGAKkpLK
 GbDc/ZwxPFyg8yORBncEqOsvRaOgGPZ/FikpQD8AV9yEntAVpCeHh5oYkwLM49BirKbuT6++qKL
 bWrPmaJaNWWxQYs2UesbNJjf3VRnr0dDRyEC6MIWQpXKPESwMvmolehxHbWFM0H7MOIP9axykUX
 I2IUDSf9fL/1qb78O29EkdN5vzApvfmZMjYKaT7RQxrkn8UyAxknQ0AgoSizXraTtua4wYFCqS2
 97Wv4y3wauA2uVSmsJA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfXzKmh4JCd/gRf
 wesblETzfO/tpSMYOPwPlgeDu+LPiDJOgO3MbrgUvHKldwSVT7dtZRVh3w2wsRmQ0y6erFxmCey
 JuDtLVFg/l2K1eCwxuXrQXV4cVx5u8A=
X-Proofpoint-GUID: FNlssqWIHeevMthIey3PEm_DjqyvTw9r
X-Authority-Analysis: v=2.4 cv=NaFzRGD4 c=1 sm=1 tr=0 ts=6ad9ed0e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=1jkgN9UX300lxNHWC5EA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: FNlssqWIHeevMthIey3PEm_DjqyvTw9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_040135_482014_D6B1EF4B 
X-CRM114-Status: GOOD (  18.07  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> The configure_dp_phy() callback can return an error (e.g. -ETIMEDOUT on
> PLL lock failure), but qmp_combo_dp_power_on() was ignoring the return
> value and always returning 0.
> 
> Capture the return value, skip setting dp_powered_on on failure, and
> propagate the error to the caller.
> 
> Fixes: dd1153651b038 ("phy: qcom-qmp-combo: merge driver data")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 5bbb2b5f8c74..13d5586b981c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -4376,6 +4376,7 @@ static int qmp_combo_dp_power_on(struct phy *phy)
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *tx = qmp->dp_tx;
>  	void __iomem *tx2 = qmp->dp_tx2;
> +	int ret;
>  
>  	mutex_lock(&qmp->phy_mutex);
>  
> @@ -4388,13 +4389,17 @@ static int qmp_combo_dp_power_on(struct phy *phy)
>  	cfg->configure_dp_tx(qmp);
>  
>  	/* Configure link rate, swing, etc. */
> -	cfg->configure_dp_phy(qmp);
> +	ret = cfg->configure_dp_phy(qmp);
> +	if (ret) {
> +		dev_err(qmp->dev, "DP PHY configuration failed: %d\n", ret);
> +		goto out_unlock;

Please switch to guard(mutex) which will let you remove the goto

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
