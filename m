Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D09DCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bg8UKR/HoLP64pUFeS9cBgGDQuelb1m+KpB8XASZDSM=; b=10GVDftzeZjAsl
	nY8bxkDpnakk9hed3lcvTYGUmaLTjRwjC15UBquwyzheKy5j/+NnWwcHpVm2ZXCIkuowhjrlJOI9S
	eGNKhYaZhAOi0KnbAe7A6BxPqvTprzVp9v0bQFehKjMomCbuNhC/APwEuaJygrxz9UDuwtd1yU2GZ
	9HFDpfWUliR5iHQmeYx7XTP1TfDKHXnonhnorxIOFjLqhjBgyABsoPWgDSCOzbv+0Nnb5vfbfVx8D
	8tXzSJ1muteul7Qec7cEYW6bLjOSTxn+otf00svAr4OdpBuatnt7MoHooRb2r5Wz3iZZtEl20FOwm
	Ya6vz2xPdhsRU9CytWzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA0k-00000009nNZ-3h5Q;
	Mon, 12 Oct 2026 06:59:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA0j-00000009nMy-0RdH
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:59:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55hTK474937
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JaW2KGhD8Vzo1irLVSwbI7B2RgRHueLNyNGlF/CbcPs=; b=aX+Eoz0kjufQEhsV
	kW0OtNreGrxBpIbeB1qWSlr8Is/d8vE07/FyqD33U3zWNrnH+L7ck3hEFkFeIeMC
	imTfb/irx2SiOS66yDMw+fmYwYj5xBJwrd2+wXkjJuks1cenW16rvNP3ToedbpmH
	7gqSL62LAz1v6EObv+sbF6xtEwoMS7QQjKGmLyMnMUOKDEpYUECktvtnk2aQxKQv
	mp9dB0uq0eYVfBfUXuS2nhxFPc4Yc6O8H5q7NNhP1qMRK4bIwXM7zSs2KtGrZKmA
	794WVhayetXuTpbLr9MPSiOvc5Jh3qR1TYNZbAeOWSL13GQFf1+t4DbPvW6sActb
	s7Dwlw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7en9w2wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:59:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3aaf955db5fso2378076a91.0
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791788388; x=1792393188; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JaW2KGhD8Vzo1irLVSwbI7B2RgRHueLNyNGlF/CbcPs=;
        b=PksTikgi9V+u1Q7Z8dFygVzumeZOOhbJ85wWcVnZ0HK4Ocp0eklXeTuktyyq8q8tUj
         66/tN484RU9rCQxKQk9aJXfkulnJ5Wwa1JEsA9dIQ02/lG+bieAhG3eFPOaCJEH8+iXp
         CF6UkVfXwFs4x29ojW0m4nWy8Qsv6BKKtQ6ya7+ltVbbbbQjuFptx0qj4fIer8bxdMHG
         pljMFJhZZaS/MrhTctAb4lLz1aFfi3cofyOJJ4gN6B0ndOG9Z0Fx8bGRxdaWG8k//6H4
         Vf7ivou6h9G1+puVSYCvbadxuGLH0h5EaWv6b0+vr/JXaMIguGq9OZ7euTX2vBpdBwIx
         PvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791788388; x=1792393188;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JaW2KGhD8Vzo1irLVSwbI7B2RgRHueLNyNGlF/CbcPs=;
        b=nNlzNkIdlYIozdFfNPQoTuUajOFgwpPrZYNjNWkILtK9ArHHbjXz+Fi6POd8s+ivr/
         Dlxb3inCLuQVC7MgPwFeTP2HPGoprn+PLF0HObwA1wdxak73frDiJUUkjEEnIovaysyX
         dq/YrN4l84eM9RSJ/PMQ8kMviXEv0iFAFEb/OvTPwHS+K6B/hlLOm9cwwOlTluXhewr7
         uz1GpJ5QdZgPDt8hahOtYKlFD0nsaDtggXl8TA8zRayiYcLff40RsAgL67wH5bYxp/ZJ
         ZYzrnoDNNZp+pC1kmNUEhmexbR2i2d9mX/LEmD8MgEbyspCt9PhYbUfFunU8YFntUeoK
         N/Kg==
X-Forwarded-Encrypted: i=1; AKwUvByu0gkBxSeQrgmeBAjq/Q3DwWU9z70x3DstqezAJEphUBp1HqbuzBCs71RoofvGtpE26N6E2ojxTRM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJh0Wy+jo0i20eJ+Iujv/zWsRj0FAbLRcEi33d5B1QpcaRVTvew
	8mpwZWMB7yvi/K343VeieYdAzn2pjKMW9nUqbbSpSHpd3bglleI5ZqGoTSwYZ7NqanIULnmBNpb
	uqZEwGMhOrjr0u1TgDugvhKTZnNmj3f6ViO1ErkQse3nACTf5b0P2ZJwInniAdqL/4VGd
X-Gm-Gg: AYBFou0jjMH8ESjfLeTWLq9FfcTYDIzdoTq0/+CucH6kIR6ARC2iuS+O29J5ktMMb2n
	U6Fs4t4OQlIhIQoxrPRI1U3bx8LmfrDwlZwPNpaI6HAezwx1LKdfy176y3BgydPGSthBaO4+Q6Y
	E3IeS97cTB6p1yg39XhZYz1eRa3Supm7tO43Ve/KPmDzAiDK7x1GZQ/wfV0eexzib67W3TPokiS
	JFXbCUbISooncn2XM1QB4sYzvmfM+itYzq59tKk63HhH8U3UkY0UmGrSTGTwfmExrmxLssqpYbW
	5zF/XdTz20sZdQ2ABzQzMVJ7Kax4qMsqBBEAwQbS5ICSmM4T5wV79t23BPIrzQ9e6/tb+s1XkHe
	AQ83VFwFs6cK23RqnimyAHBndc07V0+W9GQwYeyjKA8hdDyS7p/Zn3Z07ovpgyhQ=
X-Received: by 2002:a17:90b:48c7:b0:3ab:8b2:72bf with SMTP id 98e67ed59e1d1-3ab3a928525mr7530720a91.50.1791788387853;
        Sun, 11 Oct 2026 23:59:47 -0700 (PDT)
X-Received: by 2002:a17:90b:48c7:b0:3ab:8b2:72bf with SMTP id 98e67ed59e1d1-3ab3a928525mr7530698a91.50.1791788387341;
        Sun, 11 Oct 2026 23:59:47 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab38f4863esm17720151a91.11.2026.10.11.23.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2026 23:59:47 -0700 (PDT)
Message-ID: <6c7bb574-74c9-45e3-954b-b572342f9946@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 14:59:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, media-ci@linuxtv.org, robh@kernel.org, olteanv@gmail.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
 <sashiko-outbox-167757@kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <sashiko-outbox-167757@kernel.org>
X-Authority-Analysis: v=2.4 cv=Woe+otfv c=1 sm=1 tr=0 ts=6acc8564 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=GJQVe2W2MQrxmwjxaooA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 87aOBng61C0Saj3yYxlN3-pas99Hbx74
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNyBTYWx0ZWRfXw2y++m4Nv03a
 AlSxYadnJ4+rvoK8DrwaogLgzypGM3uQXzn5deY7Zp1Ba9wgI7OI6AfrOk84yIRdzZBQ6mu+btd
 6jde1sY+gtU5YmNfKC/fxXNMo21lX05juy/voc/tWrXpMp5NDcRlz3BapN5h5iuJipG9GmbgTDJ
 FxfNyjabA6ILfvvh8rqXT13t15xtDQnyWonCBBAmjrO7zt41eyFtdmebgdGqVE21tq5TXs4PXTx
 NbmXQdbYAbMMxkBBVFowKEsi0gWAK7r18Tk66lGVI18MwkzV1dT7zwJnZ6qUfCbif8rutoyGDc7
 pc6eR9hhaSotFqGf4CD/ZTcyByCRL5DvLcPgyC44KQeb2l8nr6dekb5z2BI06WseWZehoX56rfD
 /cHdm09KBYXZMmyZRW1niqJ84gIytfABAshkogJ8FNg7ScWVEeMxt5yoEpUMop3+Iv5ybSJVo7p
 JV5ipTVvPYneA7mJQFQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNyBTYWx0ZWRfXzgUS6r5DPHc1
 3s13ACY5VLIK0QP9bJ8OPJB28BDxwz8zVOX+Rcj2nalRXdq3kgn9M2QcTSPCNz1C3c88J+MYakv
 u9H+S1aJdaQ24jU82RMLFL+Q/Ab/Fik=
X-Proofpoint-ORIG-GUID: 87aOBng61C0Saj3yYxlN3-pas99Hbx74
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_235949_178387_17E75B3E 
X-CRM114-Status: GOOD (  19.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10/12/2026 2:57 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] dts: qcom: missing vddm-supply in s5kjn5 camera node
> --
> 
> commit c1df83521b79d78bdf83d4c496be4b0e82a9f05c
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5: Add DT overlay
> 
> This commit enables the S5KJN5 image sensor via CCI on the Kaanapali MTP
> board. It adds a device tree overlay for the camera module connected to
> the CSIPHY2 interface in four lane mode.
> 
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso b/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso
>> new file mode 100644
>> index 0000000000000..d0e39855e0e62
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso
> [ ... ]
>> +&cci0_i2c1 {
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +
>> +	camera@10 {
>> +		compatible = "samsung,s5kjn5";
>> +		reg = <0x10>;
>> +
>> +		reset-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&cam_mclk2_default &cam_reset2_default>;
>> +
>> +		clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK2_CLK>;
>> +		assigned-clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK2_CLK>;
>> +		assigned-clock-rates = <19200000>;
>> +
>> +		vddio-supply = <&vreg_l4n_1p8>;
>> +		vddd-supply = <&vreg_l1m_1p0>;
>> +		vdda-supply = <&vreg_l4m_2p2>;
>> +		vddio1p2-supply = <&vreg_l2n_1p2>;
>> +		afvdd-supply = <&vreg_l7m_2p8>;
> 
> [Severity: High]
> Does this device tree node omit the vddm-supply property?
> 
> Looking at the s5kjn5 driver in drivers/media/i2c/s5kjn5.c, it
> unconditionally requires the "vddm" regulator during probe:
> 
> static const char * const s5kjn5_supply_names[] = {
> 	"vddio",
> 	"vddd",
> 	"vddm",
> 	"vdda",
> 	"vddio1p2",
> 	"afvdd",
> };
> 
> Missing this property in the DT overlay will cause the driver probe to
> fail with -ENODEV, or if the regulator core substitutes a dummy regulator,
> the physical MIPI PHY power domain may remain unpowered, causing the sensor
> to fail to stream.
> 
>> +
>> +		port {
>> +			s5kjn5_out_ep: endpoint {
>> +				data-lanes = <1 2 3 4>;
>> +				link-frequencies = /bits/ 64 <1248000000>;
>> +				remote-endpoint = <&csiphy2_in_ep>;
>> +			};
>> +		};
>> +	};
>> +};
> 

vddm is an optional power supply and on this JN5 daughter card we don't 
this power rail.

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
