Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F140606A328
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FzUyyrkU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=O6m8KfwX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eitZ5sBV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wW0rpcyaS4cEiO9iffY7CawUQRBWXPZ+KcCvYaLi1do=; b=FzUyyrkUndfSONMjzYQeYepZJm
	5ee6Di3IDk0Fg/6J1bAo/Cu9njse9SSNlxM9EtAWaqBzlxgKAErupOEPdhbs60q3M7YJqxo6Bdd31
	Cuy0xL7trSoMexL6J79HIln+dWyDMkqwpjiJ8B5v/WRflHJlNRD9qk/JNCj+czCeyCv23uHlDK87g
	61WGEFR1J+lhGQ0uzNHj5yHjEYHa2uV72nfld+17Q/CJka9jgnygv2vHLjHE6WUEHwYhwyjzDZxhX
	4pfd9fiRaLfsxemuK4TdjASERMSI3v+A5bQ0QD2Yt0M4JL5oN5S1F/xEvNR3/rhR4bmDFX07WfPWj
	kndbeisA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJq9e-0000000Dwez-18lW;
	Thu, 22 Oct 2026 10:36:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJq9b-0000000DweX-0gcj
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:36:12 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA0Bjk2396818
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RvLV5q8VkGm2l5kC9SNylMb5gfrHW8SKJTDLvC3Q04A=; b=O6m8KfwX4TBNDVGT
	btK3QlzzuZY7WtgaHax/RcdDSV1MhzX4t0eydcPI4lWT0JfRvUC8QJ+aIWn5ZvHE
	/lK76GnWREeiWcR1z7FfbXMGqWt1D2kVLYP1RosVIXK37/rEdAqpSfuSbXLW65yV
	S6doSrPqkpF7gLrwU9UaHKCVHG3Gl2jEu/b/sWeprSXj3F3D2ITrF03kBLn5h7PH
	XW99uwaYn56uDaWkTvTUgUq9/1jo9Kt5qjwK7oDxQBn2jMd+UUuopo4gDoVHHUhA
	HTSuRjeYIEvJ2Dm63vmBvXh67XikyepMgw1ghqmJjm3ZNAV3h3Mqchnqy8LriRLU
	CkJEnQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93bt2wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:36:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93edac58b24so45032485a.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665369; x=1793270169; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RvLV5q8VkGm2l5kC9SNylMb5gfrHW8SKJTDLvC3Q04A=;
        b=eitZ5sBVWpgcvsDi6i77oUgNWbsOMtfYahHfxBHmFERNgbk9PhGkhs+Hqkq9B87yYH
         KkRUxr3QLC26w0Xw/9PEBqehn35hEAtAWjSwHB2l/xTfd5VSSOnq60mCCqEoeI+DYbpO
         Ouh0DDXyf83e/aBe9dgxZFTwQp3LETkqZgmuVB3+8sj1ZW0Vmhils8amm7+JcZcWexGj
         DrWNOFAx6G/d8MnGVxgKHcqnxp74xOk2oSNyXCAIXGCd24dUyuHfJXsIvPX47l+mBm/z
         kxl7SxLmAt467TeD8D20bimjcU1gjTJ6IaU3EosWnRAN2ZB/NMFWPsjx7GJqh1amK2S4
         NG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665369; x=1793270169;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RvLV5q8VkGm2l5kC9SNylMb5gfrHW8SKJTDLvC3Q04A=;
        b=MfChKbFiA9vQaslZFgz1YeiiKHSqjwbTKO/Edv7dA/OaRuXe2EuPhu+ZI0UFDrU6Uz
         LOmnz6vXJ3xBrBsQnwU90ebyotKgl4fgc4VjI5gTUfoXPOuCgu4ioVDyq5bo89Hh0hS8
         ZGPaE/C+9CVWZj4p7W7BYCml2p7h1YdNaAjZm0BTUTuB0xe8q+CLHPy6EjFiVH77u/AG
         DKA159tdff64EYnh56NDqxZ3RDAn4+mYx+vu3gpZaCB5CTZe2b4rCx0kK0T1W08gL3py
         mDloxkrLTlc1S3dyjrMyE6u+ff+JIeZPh8/lSLvQf9t8BRo/uzZm48HFzemnQdqk4rRZ
         M5dg==
X-Forwarded-Encrypted: i=1; AKwUvBx4fEoOIlrTD+ltES5ilcuoS1vNiHx67ktnI/ylFN4+/Qg+v24Rph/aJcgYaJBpLJ3IwK4LszeRoh0=@lists.infradead.org
X-Gm-Message-State: AFq9FYI9UQYRhVmjy2iY6q4SXTRDaViG4gGq867QnyoKioqQCxnPxB2/
	b3oMfrocj8DAbxxlxQZ7Y2rQAcaM5TYLH+bmxcTo1VwLuNoP6QEfUO1G9/PjmfkJommcEPxTFaa
	lFSVECK4X6ZVvgZzaXMGC77/usivotMBo4yafWSAbSKVRjsHbd97zXKDH39UdyfqIR2Sq
X-Gm-Gg: AYBFou2kj7CRJ/AEJCysIOkkxh9SCKWj2qiMqVG6m+ilHDVgMjhcY71qs/d/CE47xcA
	3HUelkwo3xrOEyRydOZZsmOldZaq9bFbECKuu4HvtQor66PfNLhd8eb7biEaPY4hbSWSmm8fPvZ
	6+D2+g9mhLl0nh14VvAe3xXf5jpBIMCyttesliMI6hIDBqYlhbGbOF3P6OA5DEBVya3t/aOSAck
	TVST4AJyv0DeOwKPfcV4eh3GWashPm+6ybvG6fRGLrc0V3pOHCbmgBQI9iITukrJlmtIvq01ZNS
	p7BCLhJgYZ2/98l0aoyFkpdHb+SQb/c/xQ26PvN5fl41tVdF9WOGhQRQW3hs0IhxAJzPvYml0VE
	ckpWuAdE2qEz+HDbN9M/lMA==
X-Received: by 2002:a05:620a:2913:b0:93f:a34:d9fa with SMTP id af79cd13be357-93f57e5e2cdmr1027278085a.1.1792665369240;
        Thu, 22 Oct 2026 03:36:09 -0700 (PDT)
X-Received: by 2002:a05:620a:2913:b0:93f:a34:d9fa with SMTP id af79cd13be357-93f57e5e2cdmr1027273885a.1.1792665368767;
        Thu, 22 Oct 2026 03:36:08 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a59ac5dsm89387066b.57.2026.10.22.03.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 03:36:07 -0700 (PDT)
Message-ID: <11c7f9f6-7a9b-4b46-93ba-b74153744a1a@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 12:36:05 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/11] phy: qualcomm: qmp-combo: Remove VCO_DIV
 programming from qmp_v8_configure_dp_clocks()
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
 <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-GUID: dzzLGyJtDQjMbFS26MzYeefveMEuDdBp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX9UIYaO6i4GVB
 2wCFcKOHG4rhlhzrP34b//DXAfbH1IEqImoA9Z0IDNpDBdayS9i8rLmYXoiebOK4kRsUzbjX7Py
 dOnowP2a19leI7x4XqzSqE4r4+oWv3A=
X-Authority-Analysis: v=2.4 cv=F4fC5ahN c=1 sm=1 tr=0 ts=6ad9e719 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ATBR86yDhrRX5TM_Q68A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: dzzLGyJtDQjMbFS26MzYeefveMEuDdBp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX00YBILOf1mAB
 iyzsy0p5jjGrYQqKGtS4oeEGuN8MEQZ8UQXON93+cwRxq584kP1oQkGvqwqVHfJGiycG4zcwuOn
 xvfFeLjrAEP9v7cVYVPRbC/ofwCSm1jdCiQFFPVSy+UHfz2ySV6wfLItYqfBJTGIBC4dPBi19jF
 mOHriFdKUd467GOsH4uEr3rd7uH1nlCOEgnnbGYA8sdA1AzgXYAHb0yUQQiz07YpHXokxP8OkkG
 sXCauorQUjBOEZ3MHX8Aut87TAe3x0pcrwaGd4LXwRNcTRsCUFwVo5y3E3HTkW9UkcT5urn1RwE
 HfvC4yeiXAmp5MBW4YI2YlrEP/UUB/egZ9hqFiK9Sqmzx8Az6Po5AUwHCHe/EGJB+Ss6Veoa6u4
 EwFpWPDtlUx8F1cFBQqVuUZ+vvvxn7BJyakP/vu8sU6tjnlR1ymbTb6XHpbqK0gP64eNNQrLRJP
 uMI5xDIFw9964J6lULg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_033611_324728_41150001 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> QPHY_DP_PHY_VCO_DIV register does not participate in the
> divider of vco_divided_clk, it can be left as it is- No impact
> 
> Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

The way I read the doc, it can be left as-is on Glymur, but
not on Hamoa

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
