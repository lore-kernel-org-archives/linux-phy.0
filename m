Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC853606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 21:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wb4eqoNC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=C9NNQjG1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Qcc0XDTD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IBoiiEhQKfJw9Gcvsk6VxzglwMiOTI9zk/E4rnjzaM=; b=wb4eqoNC9Jr3Ru
	6Szv4HbVSlJYzReat6tasyaFwbuU0MMKa2C46J9mGjiT3E+i03LLM7uRBS2fT2Sq9Rr4wlGhTR3T/
	lMnNzUKuoCvELWExzgpa8wm9VubR+I4fGpk9upeR2EIwUKbPNHD7+NMGiReonEdJJLxCn5GfWolBq
	FSfOSA9BXVZvznFbyzcIT8vszHQiQurU0MLFmhSC+/fEpAbhaeEeJtn+ASx7lXcVRP6W5x1NQhVHS
	mWZKUfXL4GaHFO2jf3Xpn2XaFyrGv65iBQIiFE4iHJh6251nm8mtOn+oAavgnrvCe3AZSjq4Nj/wz
	hePDbzfjFgIzic788jew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJHAy-0000000AfVo-2ERG;
	Tue, 20 Oct 2026 21:15:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJHAv-0000000AfVR-1ViR
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 21:15:14 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KKu1Wt2584701
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 21:15:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sT7TNT3LgoGrkuy1rFoxBJWa/Cwt6lKP6DMVa4zjFec=; b=C9NNQjG1dc1jZvhz
	INZ5MeHYvQob7NbXk8rKACFzfVBqvffe3AeZqpaROPWbb1yfW8X42Eoclirq1ggX
	Iv6lahrbPf75YvtY/E+SHxCiGDixLnCRCphhgFyb/867QySF5Jq0o0odIg5FsFbr
	+gIx3aspInNHqeVDdXOKw+8zLjlusYIBeW2z9QCQetCW16+t30L23QL1ApdmfpCa
	Qb5ByE4iyExp5bA062UeZSfrBPY23z7mqxpmUwSdsR5gXaifJ5cZ4a+9cY6BveLI
	GhfhEoTHiMjjau0iJCk1e+dK5mwO82b9J8h/PnN7iDLzdeTljpqUM6cX2C4Hcvhq
	2x9wiQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hed9v0pjv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 21:15:11 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-147be78cd56so110732c88.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 14:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792530910; x=1793135710; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sT7TNT3LgoGrkuy1rFoxBJWa/Cwt6lKP6DMVa4zjFec=;
        b=Qcc0XDTDn4QZQoG9Qu2bhghyzdPnAOz14xgqiaeSLbbHu2r1hlxenh6s0DZlQ4mZ+l
         546XBWrYbaATxPACSzzeh9y2rvycWQE0Yvh96GsxSt9kuMTcv3Tu3lYm6u3TXnwLfnSu
         cM274bTuUH1z0NfiMH7ofnM/2cmS70E5+NXCfytEN+iporwwndgL0GHidyp7VLr8OHQP
         Va2SrxDjlPeAXbFSJDkT22JQWm+hVO0CxqwNcpVZi0NJXwHymg43CGWRb7aqS/kac5G2
         XL1DYRCDHEzErL0JqDT2jt8UzNfu29PyeiqQppXAilqs3MEnP9GErdHyOsH/FTSP4Vvj
         OMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792530910; x=1793135710;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sT7TNT3LgoGrkuy1rFoxBJWa/Cwt6lKP6DMVa4zjFec=;
        b=ZvUUCkKS54o/1e7km/xWnf9By6nPE7AENS9uFcrMU2ng+ifDyOHMunp4VGiog3moZ+
         8Fjjh6YTVPaCI2dimAeQExzW9bfZAZN8MkAekMfFl2D5ar3PjdOCA/h/lHwjfxTjNXhx
         hhrwXjW7cV3vPrMupQdSy4a2GwpTqRXqIbxMvUDXbiO3TucS3RX7AVog7cml62e8P00j
         XS7/yVSpZo5VP66xbfH7oymiFUQHYQTYxT7/gOGXY1KY5CjJAQEFJ+CqwJ9jOUnTOFnH
         w/w/M+Y8OvUZ76f8L3V9Dd0SIB7UZ3aU6XGpKGzV/OOdlrgDmQ3SjhiI75XYsBrSRLHA
         OkwA==
X-Forwarded-Encrypted: i=1; AKwUvByTvsVyr828MDEGkVms6zEoeVfqenhCpwXP5yz4Bd/nN1WYCH2/KYFP8lDtkwpC6M3QMkGYZTwNK/g=@lists.infradead.org
X-Gm-Message-State: AFq9FYJoOtGZE7qfjp6IbhDzuq+MfSt/Dv/v1QGosHseOue1zlJhcsn7
	B78u1nhchYhTzzDkmgQsUmXTSCCxLt4yNdba3GaharvpISi/Z5GAw26SUwzIU2FdgULeqBS5rrj
	7rmWSbvYGlKoIY7b/RgpTEi0UTFWMee9fRPcoRk5VEa/vHnquAJ2xkeXHVzHJHAUyPCPj
X-Gm-Gg: AYBFou3yU096ZCNbSSK6lk7T1YqWjzChLH2CBdUj2MpCK3UWgR5GfsA/PAyd9blAcp8
	5fXvsEC9JY9bKW9PW4EGad6i4Qu0rKP/OtaVnGaLcy8LQctdCEora4TcvMrr8Oy2nE5Vb4+sPLx
	u8WEctPqeRfhE9MiNFepZAYdHE1XXpU1SpB4Kfi7xGja175NZ5JBBI1rAKEr+zNiLm4f6ePwJxg
	jZARdrYFYamrcWinXMMwQDb4djKsSJHZtjOtvLok+ubbPSmS39ZYvONmyo+K6iai2K92DDeZ11U
	FF9Lo7ZKqG6AxiA92MbdIUEtI0N1rgWQeDjfyU7Ro2ZIFBcgM+Yi0gJeSq/PTpm+O7YIK+lUDGZ
	BeujT/gITQfG23nmRT1LTEZEOTT8obBO9NzzpJxqnYGwE1Ch7SsW9e78RMQ==
X-Received: by 2002:a05:7022:3f09:b0:18b:bce0:a227 with SMTP id a92af1059eb24-190a6adcd36mr67564c88.15.1792530910095;
        Tue, 20 Oct 2026 14:15:10 -0700 (PDT)
X-Received: by 2002:a05:7022:3f09:b0:18b:bce0:a227 with SMTP id a92af1059eb24-190a6adcd36mr67516c88.15.1792530909271;
        Tue, 20 Oct 2026 14:15:09 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1903d68f2b1sm980129c88.20.2026.10.20.14.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 14:15:08 -0700 (PDT)
Message-ID: <7b5392f8-de43-4d31-8f33-5a6d8e0af6a3@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 14:15:07 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] phy: qcom-mipi-csi2: Add qcs8300 CSI2 PHY support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org, gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-6-anusha.nandi@oss.qualcomm.com>
 <20261019-elastic-psychedelic-chamois-e8bbae@quoll>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <20261019-elastic-psychedelic-chamois-e8bbae@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA4NCBTYWx0ZWRfX4uE/PICzgaEq
 HWnrrv0oJogNF+elKAkvXyt0jJ+zaXWrfUrowKEicGQ85GkJohKYXnT7E52A1ZbPe7bevzAqZsK
 bmgGQwszDpgzCiJPfryEMOQQ+I8aWi0=
X-Proofpoint-ORIG-GUID: 9Ncbd6E0QYbhHIYoNIlv07KPChg8uAyE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA4NCBTYWx0ZWRfX/+bgMy5Ni/Dc
 KMQ7qF+o7EDFkiga8GcHNvYX37kuPA/HanoRQ+j9XQY0KNhVSmwk356Be/Qz7I0FVA04gtnylks
 ac1cjBcoWq4henRyDI6fH5pLCP7jk7HDscxnElSFTnAq5YnJXczowQUo0AVJfOb0ErsPEGqxoaY
 bvdHfrrEzXJ8DoDi5oI525Qq4EX9U/MpkVnexNZExc1L2X0a+GGHc2dHbVSuzoDUGyOvCQDznGz
 LovoKgmzg40da1wk5hIEck8Gj/nqGGUiZB9VFhvvq8hJlb1rKrDKbqaiGbcynbUlPwXQ8dF/HBe
 EcaabEUeZykLcfpJO1++QD3JH4x2Egt3adgaIoMgbieRoIOeBMCFcaQ5uysJgU4uHUQrfK12bNU
 ZKXnjOoD5K1RnUw50kyCuxTJBHY53g5eeEYTYNAdbgiPFzWVdottbpVHLKXvYLMwVU1Wr+1XWpp
 CsRnZot77FmfFRYH05w==
X-Authority-Analysis: v=2.4 cv=I6zw19gg c=1 sm=1 tr=0 ts=6ad7d9df cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=18DxlMPwXbuUbd9su7wA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: 9Ncbd6E0QYbhHIYoNIlv07KPChg8uAyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_04,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_141513_522947_EF878A58 
X-CRM114-Status: GOOD (  18.11  )
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
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

Since qcs8300 uses the same register settings as sa8775p, I will squash
4/7 and 5/7 patches in the next version drop.

Thank you,
Anusha

On 10/19/2026 12:18 AM, Krzysztof Kozlowski wrote:
> On Fri, Oct 16, 2026 at 04:55:00PM -0700, Anusha Arun Nandi wrote:
>> Bind the new "qcom,qcs8300-csi2-phy" compatible to the existing
>> sa8775p SoC configuration (mipi_csi2_dphy_sa8775p). QCS8300
>> and SA8775P share the same CSIPHY: in the legacy in-tree
>> CAMSS driver (camss-csiphy-3ph-1-0.c) the CAMSS_8300 and CAMSS_8775P
>> cases fall through to the same D-PHY lane_regs_sa8775p[] init sequence
>> and common_regs_offset (0x800), and camss.c gives both SoCs the same
>> pd_name = "top" Titan Top GDSC. No new register data or power-domain
>> wiring is therefore needed; only the compatible string is added.
>>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> index 821c6a0a916c..cef4a90ca539 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> @@ -453,6 +453,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>>  }
>>  
>>  static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
>> +	{ .compatible	= "qcom,qcs8300-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
> 
> So devices are fully compatible? Then express it and drop this.
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
