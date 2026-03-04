Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE0DEB7ECF
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 12:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vNgWs3frICc09rFFesjjewCy3e/cL0jxpz7wwsvWnE=; b=2tmTKodmhi9Dtc
	uZBq7jEKoaiFaSwqU5C/oim/FfDZVlWKUWzeGGDH/Cpk1csx/hppQX8CgVqktd3GyjySqMAuW+Qci
	IEG2iUpVgrYbHyKkaO2sxW0c3zSeCI+c0pIFzi+Mhqy7c60cU/orR47XoJKQ4eHQSVcwC/gzqgQhW
	f3PXxJhG7bSk6CrbrOC9w724IXgikama6vSWvhUoUyJ/JqYyLFe0r8G6gOpJaYZpEsxuQpvE9ecQn
	LVT1RvFk3b4Ia51pa34MyFQnQqw4MmfLMtP+JNtPlI9bVr6KK7laBFyCuArNU3O2NXGZqhloSQ28G
	wpFigzItksbM28uqRKhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlC4-0000000HAi4-0cAm;
	Wed, 04 Mar 2026 12:19:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlC1-0000000HAhN-38Vj
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 12:19:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624C6KdW2306399
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 12:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxsB5NCYJ9Wco9EkS82OhpVjd4FUOfck6CfUcK9bWk8=; b=FNipxwmRoZDqij/1
	gNq+1TLME3dHhg342F64Rh+fXPYNGsS8N3uzJM8pGNiMOs2XETbyEqOOEyDT4GlG
	KIGY0PRuHdQW9dLfUaxGmYy3T0g0eh3Rt6vnFRU4zdMH5yBpjyOxoxC0fsVJGq/u
	X4Osm1dqzhGIY/J0DX1DHiX6nXroA6lHvo54T19UDXdbDxaDtLJJDBYtySroiLh4
	7WLj1ZqV8lsCOkmLV1YV3vTwQpDG4SRjcIS29tc9cxZ4qAFeX2kVH+OwAkGLaiki
	xdLc89Hd4jhSLzzahmXKOihPwGCDCk2OJla4boH+JBIHVlkFwJ7aUlF4Y7ovDvcy
	YsCjYA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8t2xn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 12:19:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a04e9d4faso12582636d6.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 04:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772626748; x=1773231548; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uxsB5NCYJ9Wco9EkS82OhpVjd4FUOfck6CfUcK9bWk8=;
        b=Yn3QyRyjg/dcNAQvUml5mkxNQ4dYL2AZsAXrm2dr7dDz7obk6oyLRHDY6BKOnHgA08
         ZI/iSFT2xX7MghatMfEupwu5yTyi7v1aI8NpOpFkrgIt4cHpXR2AC2ciQpkKJG5xWixH
         vjzCUSG1px/mQo8sOHwI0xJZegfcP/IFMZAjeiGPNVX8zw88A/IqPF6J0RmoWH6as87r
         DWQskofK0krXE7HYEDz0BWvEOh8uQuOcFBSzcGEMeMU53fpe6OywalEePaGKvp5X0XXM
         9l3qcaCjInLWCLF7KuBj08Bk61ViBwa5qDLJbj8Kdc+NziXt220pa5Zdbcs+GqQTvTJJ
         D36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772626748; x=1773231548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uxsB5NCYJ9Wco9EkS82OhpVjd4FUOfck6CfUcK9bWk8=;
        b=xB/JNV2Msk4RKlJSVroa13aXPTa4PSFPzOyNdUaHYIUMDNGQCV+V2PjEDPrHXPkCtW
         fDdgFEk9yFlPujSsh9H6SMKm+RKPuMkQevKbio/J6Nlwmv2mXF79WDrF5enkeoE/mwtd
         ao3a14kvKRjC/dZlL2Sy3YmY21reNPzrt5EY6M/QdATrn8z4uqZ6zmu9UMWMBmk06WE9
         2GFaW0TEiK9D42qv3Kb4VRNbaqOmf82DJUumRvvgjVAeKFfgo3KHX6fGWIfwtwe6w8iu
         R+2cNJAVdeqMr8LAvJl7w9uu2QhsLAirUQG+aLTTxuTXNwOoUEBRLbcERTEYonarq1l8
         oc4w==
X-Forwarded-Encrypted: i=1; AJvYcCUEBZ6W68Xt1AHBrES613DQ5LtUpzgoKCi+Poho0Y0TQSnra3bP/epRvNH6uIJ5Ya9aLJkBRWEhrWg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3aKO8nqlk6Gbj6meYq+qE1ainxAZYg3HO2ZR0t+49v++UsnXy
	u7jFr534RSTG+cgLRUtrVXIeSWPjOnJOhPmy57BS1yrP4TGdPoQwTNjNDQj8sgGQI1ynoWTY/55
	uuoSoX10veMQPqjAL7yKt+5gKtI/I8jjpAZYbApXz1CtkiWKjneK7sepjF0auKciuBIHd
X-Gm-Gg: ATEYQzwwM+uqH0ycpQ6+pT/XsHBpfG7/IBrPdTb2MY4FagAUCJ5mTb8iJpJ1lqTVlrs
	aUOpH+vVKIhPFzOiA6SmRGWY1HFx7POn2tOATfiQfOCIBSW7r/Dy93/lkh57Ro+BY4vyHpWyKk9
	/Na5JzYtPvaCKkOK1fRch93pgQsOc12WaPUvsM5or5dX8oSHP2coRPbOR1Phk0pOZ9NNq1QcCNz
	xIBk//IbwemT6IvezMrogMCh5xh65ZotFhohybJzHEtnaMDOWioK505fN1pcqm2Vo1nOrDD/7qa
	2RSI2T/4fow4NB+Ltt037pkLlgg8tlpHWtjnITuPVtSF3zNcFcjryqY2PzaPMWlMJgtrCWApKDq
	ALjX0uYkKaa5Y+zpfexJfcb5Qeq5oCBbdPiU6B/xHgr4uf1YRU4LCembTgqXwdex2s1j/m0Ou/Z
	pYpoM=
X-Received: by 2002:a05:6214:4c84:b0:89a:c:97cf with SMTP id 6a1803df08f44-89a19989f7dmr14654566d6.1.1772626747791;
        Wed, 04 Mar 2026 04:19:07 -0800 (PST)
X-Received: by 2002:a05:6214:4c84:b0:89a:c:97cf with SMTP id 6a1803df08f44-89a19989f7dmr14654246d6.1.1772626747219;
        Wed, 04 Mar 2026 04:19:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b93c7eaa49dsm274435766b.18.2026.03.04.04.19.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 04:19:06 -0800 (PST)
Message-ID: <0a703589-48cc-4717-a629-4424ff55b7bf@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 13:19:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260228220634.22778-2-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260228220634.22778-2-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a8233c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2YwZb52RRteD79CL59QA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: TmPF0Sfj6wK2roAAEeH75S2ppa7WsQqy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA5NyBTYWx0ZWRfX7vElzOIf8KAU
 891QDO7xV1Nqwr3QzRV0PPzcclqF0eUoRtigpD0sxHpYFBtVLoIQ+m4ZSiLT32VOsoL1el70cOa
 VHDmhsreR35VpJRpX/Lr3Ke5w8yzs+JJFsV2uxGUVArLjXTTf8IIRswzCgyWZFQulnUOmaj5H9P
 CGHAGsVXz/eNC5CWqlOL+JlUQ5GOW6yE++DXPcP6fBD+pKXCH9lvpokH86HBh+4Q1yHRZvLJPg/
 4OJfR2b8M9dgbVssUx7w6MWsTJhf0ODTYa+DVU4wlKKzlr+mLBfXkmfx5kDDgHsi/ttYVzdKRNa
 nt0F6an+KXe3BJ/76e2ogRx93KHB8E4Mz8ksHTiE26HSY7IdKcOfrph9bCw5T2ZmXYpP7MA5Go+
 gxGkmN9ekveCv3EyGlO6F0+PxaYhWfnKnQUh8TQ2ANWf7zS7gXrdwO461Jj9Cj4CYghYc3YRe+z
 Ye3OJmTr0H3IhJcRpqw==
X-Proofpoint-GUID: TmPF0Sfj6wK2roAAEeH75S2ppa7WsQqy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_041909_794091_A31DC36F 
X-CRM114-Status: GOOD (  21.17  )
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

On 2/28/26 11:05 PM, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> Note: the suspend/resume callbacks were already gating the enable/disable
> of this clock only on init_count and not usb_init_count!
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> See https://lore.kernel.org/all/389ca5d3-a698-4dac-911c-39ba057e3d17@oss.qualcomm.com/ for more info.
> BTW https://lore.kernel.org/all/20260205160240.748371-2-loic.poulain@oss.qualcomm.com/ helped with coldplug.
> 
> v2: Reorder disables as suggested
> v1: https://lore.kernel.org/all/20250927093915.45124-2-val@packett.cool/
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 93f1aa10d400..28428a8d1192 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3691,6 +3691,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  	if (ret)
>  		goto err_assert_reset;
>  
> +	/* In DP-only mode, the pipe clk is still required for USB2 */
> +	ret = clk_prepare_enable(qmp->pipe_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +		return ret;

I didn't notice this before - please add this hunk

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 28428a8d1192..cdcfad2e86b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3695,7 +3695,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
        ret = clk_prepare_enable(qmp->pipe_clk);
        if (ret) {
                dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
-               return ret;
+               goto err_disable_clocks;
        }
 
        qphy_setbits(com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
@@ -3756,6 +3756,8 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 
        return 0;
 
+err_disable_clocks:
+       clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 err_assert_reset:
        reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
