Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79741D2ECE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 14:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byQAKYjBKGg19FOFP9j7eE46fiIMfAxHWlGfWyEmbxs=; b=Ziovi4FlI2/HlJ
	AP/oXWO3uYTmYo4Q9yLT4U/D1DfQGiOPuNJ7sYXocnl4UnPnMycqAOer/lPLm7Z5qTEP1P7hGDm7b
	zNdF77ceqxLd+HVY2T2w5VdYOQ27taThJN/F2vHch2XyzAlHl600tjyT3KhXbHQ+7SNCFYkXwKOI3
	3z79e0wmrYXbiFFPX8uNJwijFIWwcmfaKOfo45qy7j7RYmn0Mq2mlgZdLjAoSRmW3cRIFcSDMkzY8
	+tlhIXbz1h+TfPRU+7eKwKssLMHqWjWxMA9asycBHcxjOX1ItQytCa4BEcDvNhGphM95JmOtjRE1b
	rMuS/WnvP96Sg+AJ0m6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD6C-000000041o1-0UKv;
	Tue, 20 Jan 2026 14:52:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD69-000000041nQ-1dlx
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 14:52:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KA7i2w3837141
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 14:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZgHrGhKoJPUcO1Zkr5HE9E2/
	XP1B6ll6VlqYUNqZux8=; b=UkIRZ1G4RJdh5FiKLLcXcE0ptLhxgnPZFJhJFJQz
	7hrUlHbmMPf2cW5yBpGiUPBDX5Ge6EqjecjwzbqHEKX14OqtaCvwOdXBYFiztJCS
	aF15JpCL9iyIFsaixCtS5WsRkx088RP0onUTvXgS9mvtjp1Kv+AnnVCRe6CLdQg1
	APiwP173WVJ9Q0umBxqK9fi4qmPWbI6e2NUzW0U+p9XKTZ+xki2LROgq13xTMy2S
	ac/Ch6KYd2FC7KstduBhpODXeoAaxNsWr0RvfHMaIokqdEIiB1oPEQ7EcpDNcQ6R
	KAgZezL6FsOcVsWxSyG2XkPU4PMHojo0FmERpZ6OpO+FDw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt7pb8sy6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 14:52:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52c67f65cso137100685a.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 06:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768920767; x=1769525567; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgHrGhKoJPUcO1Zkr5HE9E2/XP1B6ll6VlqYUNqZux8=;
        b=KxYBjZZQghcHFfzbJUOn4C8Pl3Kr+gc++b2a+iNyKQWhbDDJyBLVp6Cu0CF8+gNgCb
         75QKqrsDXYDc1tbIGW/HTh5HS+NAElMPanpo6Y3ra6NPHYjtv7JzJSj2mHzwlN3rWWJI
         G78TE3DOLsDebxw4z0XZSxUGSRXJJtndTQWswpxJpNum/k1Ls4cvHG7O7WXeQneILa4j
         txQFgl7goYVOar0f5SyKFfGSfNiXgTZN5m4H7hVAVCEgPuljjf7Q8Tw2UPg8LfcaMX5j
         s8DMcw0LyCUIBW8ODttgqZY5rSGsbvgSOyaQEdfQBReGq1/bbiIMUVmFWkErv2wsqttD
         egAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920767; x=1769525567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZgHrGhKoJPUcO1Zkr5HE9E2/XP1B6ll6VlqYUNqZux8=;
        b=MS0jxdhTOk5VzwqZc8q9Mr81QQXZAe00xIU6INFqzuIsLa9X8v8jCQFxUnAK94+Lde
         x4uyOHVphiqU5GWv1DOX1c7QasuY2RAabFVeS2bnHWiCMK/pvcYk80ILmSfysdZ40leU
         3FCd4VnJbV7jlbYcOeok7Djp8VtCEKq9eNDiJGb5wx7/udLKu98DQwH2+mXd1fuRGIz9
         CgEEPjww/deC/EHdnD+Wx4HpnYwJb3B/+OyUtlZaFin+OUnhHlWnqi4rx6cOc9rCNUm4
         2/agh3UceT2Bdxq/8uMDc7SpViY9hXvILikWIaBVg2XlO2VQw2sYXbm20Nmgu6kOJKzr
         duMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOjUEiCuDdIdfPlzpLEp7hDT0r1bpzx6ScB/lVCSQxy51czQ3q03XqAzxf7yRAfG75hG/aHcgFZds=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCjXa0WrygQixkYzcgvgnM1FxVjp6BGjgIZc9tiDU0nQBRoe/8
	iIujR/BkwmT+wd09KIix12ZvPc3EdKN4hh5ZRRyVkPAe6o4oKbT72V0CizYfM/goy7uYikCofel
	6lB5xOhWuG77bByDIAYzIJXrhGRI4hXrDWyjsGPje/XQT8C6nwvIJzG9L5s4W0RtvXwhT
X-Gm-Gg: AY/fxX7Wt4kkdusNGZVqC6BNGCGf9onW5SiCfhqFxsTzBjYhvs5SwsLlvXTW27z1Wpv
	bYBV01F2uxwbTB/WQhY80/v/ZTwViqofRfsfx1kOocXTzYPg8jGyt9UJwaNNxgfmY6P1eHvgBNf
	XyxJvH+ODmoVrn6R8yuqcaw6c0xXI2oHXj3W+ln+xISF2cxQGrrW9TngbWUoCJ0k0y82gTpQoad
	ECy4VXr6aHbzpYAHiTJ1ndvxGAGP3IO7DbfxAnxTEfi1k6FY8QzxbndTb5z/1t0C7cOhRR2PM1g
	FDT+LNcmnx6faWDaoJ2AdoNjr3eE6v6noxWt19CX51nzeTVwBUhiaFFxAyx6eL105mjJiDQE9cQ
	4QXDyVqTpcm3ITobyIB/399sZ
X-Received: by 2002:a05:620a:3944:b0:8c5:2ce6:dca with SMTP id af79cd13be357-8c6a68d3547mr1953250785a.6.1768920766942;
        Tue, 20 Jan 2026 06:52:46 -0800 (PST)
X-Received: by 2002:a05:620a:3944:b0:8c5:2ce6:dca with SMTP id af79cd13be357-8c6a68d3547mr1953245885a.6.1768920766241;
        Tue, 20 Jan 2026 06:52:46 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43596b62700sm761202f8f.42.2026.01.20.06.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 06:52:45 -0800 (PST)
Date: Tue, 20 Jan 2026 16:52:43 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <7zdyb2wnojudnrnomnx4aiwvni3e6i52kfioflb3gslztsizkw@ofvvkvrv5f3s>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-5-d3ce4f61f030@fairphone.com>
 <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <zvagnaxqgrpm6bagw6zuov4oi6o4b7vmy673oh5st22tec2swl@abvblxgray2s>
X-Authority-Analysis: v=2.4 cv=OMwqHCaB c=1 sm=1 tr=0 ts=696f96c0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=3ktymktcbobz44Ac5DoA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 8YxIjA7p_qSETn-ev1uQJhIcASAGjLnj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEyMyBTYWx0ZWRfX1oCLoY6Ab1mj
 UD0T4kb4sDIFB/HoavE47b+IGE2fUbws8i4xdTN4oQslFDzYKcU2k1FUA+Zz1tu8fOEZiI8QUD3
 pgqagtnM2aRyg+ev9nDHrbRgSZFP9ZKV6+HgRsph1/lGvuCzo6ETs9EgYTyVD9ugaqVns1H4e4X
 zERm4GYKbFBjr6BV4VaBxcSvSx166JffBt0uvc6syhUjEd1czRODds8EAajc7zC9H8mYEP4u+/0
 brKXRG9KPwWImp62/k/F5sgQeUxIAWaDad2rBV6GGILpCSda2pdK/eTSXb28BYTr3RWtmbjBZam
 t1xwWh8p84AqjZNDw62GkbslrV4wb1Hm49crlBg43xdRqoCbedNnLk1dSoNkzpM3+k4aAvjhizp
 wXbZAGlWapJOwZFZ5AXSKiXgnw5vPTXmtYGwjpB/8VcoHW1zOkmodqwh0zPdPNIPQE9HYIlcQHU
 KiUFU/D1LwsYYu57aOg==
X-Proofpoint-ORIG-GUID: 8YxIjA7p_qSETn-ev1uQJhIcASAGjLnj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_065249_432836_46B04DE7 
X-CRM114-Status: GOOD (  22.89  )
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

On 26-01-20 16:49:26, Abel Vesa wrote:
> On 26-01-12 14:53:18, Luca Weiss wrote:
> > Add the nodes for the UFS PHY and UFS host controller, along with the
> > ICE used for UFS.
> > 
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
> >  1 file changed, 126 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> > index e1a51d43943f..7c8a84bfaee1 100644
> > --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> > @@ -1151,6 +1151,129 @@ aggre2_noc: interconnect@1700000 {
> >  			qcom,bcm-voters = <&apps_bcm_voter>;
> >  		};
> >  
> > +		ufs_mem_phy: phy@1d80000 {
> > +			compatible = "qcom,milos-qmp-ufs-phy";
> > +			reg = <0x0 0x01d80000 0x0 0x2000>;
> > +
> > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> > +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> > +			clock-names = "ref",
> > +				      "ref_aux",
> > +				      "qref";
> > +
> > +			resets = <&ufs_mem_hc 0>;
> > +			reset-names = "ufsphy";
> > +
> > +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> > +
> > +			#clock-cells = <1>;
> > +			#phy-cells = <0>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		ufs_mem_hc: ufshc@1d84000 {
> > +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> > +			reg = <0x0 0x01d84000 0x0 0x3000>;
> > +
> > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> > +
> > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
> 
> Maybe I'm looking at the wrong documentation, but it doesn't seem to exist
> such clock on Milos. It does exist on SM8650 though. So maybe the TCSR CC
> driver is not really that much compatible between these two platforms.
> 
> I take it that the UFS works. Maybe because the actual TCSR UFS clkref
> is left enabled at boot?

Oh, nevemind. I think I was looking at the wrong SoC.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
