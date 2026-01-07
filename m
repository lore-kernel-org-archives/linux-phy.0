Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96519CF6BE4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 05:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8byCh0WIksug+R8DaOgUWnMc5f1YKuCwzR1+sfNsk0=; b=epP8Lr4MWsNQyD
	cjNApZY9cM/l+nCcm/bDw7ED0wG54sp8/1xqRT1E8UiZ60oclu1s8NDmwMSiWCNtOsuA9m0agPSHU
	RiZwtj28yQa0hdwrgJyisBOosIjiC4vEW2WxE4+p2wztvgRvArfpQxQ3KLZ6KLEoh5lW78BzGj+DV
	Oapw6OE77tJ3bQ+l05pNCoxO/Hk+AJRrXBbIWfKZdS/RkbApr1TdgMDsW+WLb+7zv7ol7Kksrf1Uv
	rZ9j8+SxuHCqv4bMQLDXU4cSoZJHJ667fNhAnjU8AQnpoBfYUPG4IZnbXhJdUyiHqKei+xcEHKHVZ
	YnIF2lNgr8Tv3lSF88oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdMSH-0000000EBsB-08AR;
	Wed, 07 Jan 2026 05:51:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdMSE-0000000EBrm-2GFZ
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 05:51:35 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6072NUmd3889118
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 05:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nXGAvmSu/51spOzf+pzhcIdBM7PSd+n1sojrUbHh2K4=; b=JRs1+M3/UVWnLr8b
	WfopmPPbqUBF+Pxv+f0rDN3yQ07ILsmzfb4+QosC5crcjBpjG9i2l5ZP9GxQ1eG8
	8qoTR/f3AJQt9qiZu2AkmQ0LItlk0qBsD2/vCLXtJAl/1b+LVons6C5GPigB8v5l
	8cbc0n18Alh2ZBbRj4yX6OoulUTWHO4Y1j+pmwUcU2K4ov0Iu4VqKceO0CnOgg6V
	kMUNSm6x3CeUzwZTB672RDNiMJOWQSHcpJTclfGjCUla8PGC1js+OJQmDJgZ6LHA
	g7/bvrApy2NdHStzXU2Y7CFenlXZgRcmegcEuk8RJ91khtrsBDLUAqqg8OYVmlCL
	bLqP1Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0j31p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 05:51:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ed2so1763319a91.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 21:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767765092; x=1768369892; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXGAvmSu/51spOzf+pzhcIdBM7PSd+n1sojrUbHh2K4=;
        b=L01WcUhDr4ixU/wV+SuuBydKN6UpIw3PPkUG/qRUCxdnvjaHr5Jx1v/xNHOJkymnWa
         4mVGTSct5umWBLj6IWGnd/r3Pi1exm9lR+rGaxsPMD/teW5MuUVjS6QGTb43BgYMtmE0
         nN0xZLe2c6mXQENRa0SJZiO8qPNVjHofSttO00HxG9DaRSX7Dj9VdEiaiSN7VKOuMXL+
         nQB4D4JVBewjynNLoGBzlurtnuFNaGl6wnONNDRiM4PK6YCUIr5y5JZrRNceKwNc5Znt
         fDV4Gor5VqHG4vbwaapDKafHuGPfcx1GiiJy1nqc6mA4k2Xjq19hjeipMScDZi7wFSto
         E7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767765092; x=1768369892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nXGAvmSu/51spOzf+pzhcIdBM7PSd+n1sojrUbHh2K4=;
        b=Ox/Q0C5rbMDRXSieb01F71pKI/Im9cWSXyvAhWkDIiwnT6HG6CzRQIL7Oa9j6IUZMp
         06GWhNfzHhaokKV3pITRrzQrByiVU6LBwN1NJN9KbFF5DSQl2MUQLb+9t84Zdxv6jB5w
         YWOhKYEGNM7Ce/LIDhH267HXV0QRaAicPQwyu9aKDXUM9+s0Dk2ZY5srJs68yypYDteW
         xWcuqpq5QncSzTiegdjffMbb0C34YDK6QB9BYJ+arO+2czOlBdleiVCxtag7MOgC6rZd
         8NHnIY+M30Q8To7YBmrzI0ELQw/505amOXkdzUOrHCPhBXFqg0KoeJObcwMcNK69ReIG
         83ow==
X-Forwarded-Encrypted: i=1; AJvYcCX9bykzWqGEVsR8XOkK00fTYoa7yomfHL0cvAglnG3rtt5JixX0+lzyxd3mlWlf1MjrkmOhKPYH3Pg=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhjd/Sopq1whgIzvN9DkhqUPR84o//ar/5lH0QBp3ZuRdKeKws
	RDPnOlXDpHgW0WSSIoIv4ia2V3pB9qU/l2KcGCBlWk/WSgHeZwBbTFia8SWzQeZdJJpvVZLBBHb
	necAwhq5R89qp9UsjoXAT7PM9tmKUXnh9QUpHIJpeST59JxZG8A1GYb6AnNuXt9Nb5rCF
X-Gm-Gg: AY/fxX7E5B+jhnCapcFfdGtyilCHGvWrU0W1yfSMa6W1Vq+haION3fXGMfWHYWe9Qbw
	1/Ocew1UvuNBDfU/Ua4LkUHHLJxyMmGsMzwvctlKvSUL+udVNos/Vpa32wvJyJekMU3BZWCRgj9
	U/eEg+aKr8D0sHa6WXaEg0q//mMpDzbkQkwS4baco0XYhC5IuJgX98rOGq5lu1U/hxJ6MMSLie8
	bq9+RnWbi/HSn/rCyDeJCLVyIpw0mRu3fMCkqx1CU//hqhbQx+4FibYRbA7ZGXOrX+EhtyA40Q0
	2n3aXSUIPWjcW/5ffex12Jd+pDv05kMaPdKrRkLDyB9afLiCmRJndZjqB6GrgPMn95eRwYihgK5
	d2aaYirBKU9S2j7blYpkboJnN3TzVYy+zQOml5TUSIc/Bytz9XXg=
X-Received: by 2002:a17:90b:2251:b0:33e:30e8:81cb with SMTP id 98e67ed59e1d1-34f68b65ff0mr1353218a91.13.1767765092335;
        Tue, 06 Jan 2026 21:51:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBvUZCcUtaBqJgxkFmXbuj2o5AZhvWJWylevjOCJsxj9FNVU2+6RvoqCZGDUaUXjdVhEEUNA==
X-Received: by 2002:a17:90b:2251:b0:33e:30e8:81cb with SMTP id 98e67ed59e1d1-34f68b65ff0mr1353204a91.13.1767765091848;
        Tue, 06 Jan 2026 21:51:31 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f6b7b3e7fsm274007a91.2.2026.01.06.21.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 21:51:31 -0800 (PST)
Message-ID: <530af0fc-9574-4d6f-9469-f08300da1f74@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 11:21:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
To: Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
 <0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com>
 <l67bnlyrrirb3rnz7izqpe4soqjuvkbi2xawit5w2wrcc74vdo@exo4mbpac244>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <l67bnlyrrirb3rnz7izqpe4soqjuvkbi2xawit5w2wrcc74vdo@exo4mbpac244>
X-Proofpoint-ORIG-GUID: vcLJ-9590FxZx1gU1rmccAo1z1P-ZlXj
X-Proofpoint-GUID: vcLJ-9590FxZx1gU1rmccAo1z1P-ZlXj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0NSBTYWx0ZWRfX3Qy0Qwj4ikw1
 ZDqWdHIt1n657bjTLUxIH3p+6ljJhx6h1t7V3y/R8MYmSE/ltCX5eWUXC+oJmY7/4IOgRYE967M
 0BNgKhK9KqqSjy7SSOuL+1HFSKVStzOACGi/yDYuq+idGRFAMkxoXOh5L4NtUxUVE59eB1yinPL
 QviDG4XIbnseEtJG3AHuwwIh0WtSPxVDSSA/tGQXEBMgR2ybC3Gyp7XZMCUqt9X/pznf2hki6SG
 zxLekd6IigRcxZhBu+8dizEHESq3+rHENoeG0f9dJPaoChMPx53x61mjRG4PptjZ3liBEeWGyfs
 4ZhPi1xSaj1mj0j8kiu5MSoluzecLxkhp16cevjNBq6C5vBae89O/4Rgeg2gGUe6oLfJVRWkoPM
 pRbao0mf/hRuz8tHxtR4O6GEJuCWKtoyY8U2UjsVRrsQuxTkHKhmMaIeGtQ2knFuOasHSbN2fB6
 K9MMOj05nx2dbilRrrw==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695df465 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=wfhwzJ6r3g_IQgliFxoA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_215134_705053_394E039A 
X-CRM114-Status: GOOD (  14.63  )
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



On 1/6/2026 10:11 PM, Bjorn Andersson wrote:
> On Tue, Jan 06, 2026 at 06:33:19PM +0530, Pradeep Pragallapati wrote:
>>
>>
>> On 1/6/2026 3:50 AM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 05, 2026 at 08:16:39PM +0530, Pradeep P V K wrote:
>>>> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
>>>> enablement changes for Qualcomm x1e80100 SoC.
>>>>
>>>> Changes in V3:
>>>> - Update all dt-bindings commit messages with concise and informative
>>>>     statements [Krzysztof]
>>>> - keep the QMP UFS PHY order by last compatible in numerical ascending
>>>>     order [Krzysztof]
>>>> - Remove qcom,x1e80100-ufshc from select: enum: list of
>>>>     qcom,sc7180-ufshc.yaml file [Krzysztof]
>>>> - Update subject prefix for all dt-bindings [Krzysztof]
>>>> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
>>>> - Add RB-by for board dts [Konrad]
>>>> - Link to V2:
>>>>     https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com
>>>
>>> Where did the previous changelog go?
>> i missed to amend, i will update all changelog in my next patchset.
> 
> Please just adopt b4, go/upstream provides the documentation you need.
sure, i will adopt to b4 going forward.
> 
> Regards,
> Bjorn
> 
>>>
>>>>
>>>> ---
>>>> Pradeep P V K (4):
>>>>     dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
>>>>       compatible
>>>>     dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
>>>>     arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
>>>>     arm64: dts: qcom: hamoa-iot-evk: Enable UFS
>>>>
>>>>    .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
>>>>    .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
>>>>    arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
>>>>    arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
>>>>    4 files changed, 164 insertions(+), 18 deletions(-)
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
