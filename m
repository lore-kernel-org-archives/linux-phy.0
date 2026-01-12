Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBEE3C9EC63
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 10:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6wH0fLzU8GQ6s7k37E7fS5kc7xj+3euPWccK01yIy8=; b=d7tXFrmkDOAuyu
	d/i2Omdl6MMH1NAKGrMFM4Vg6NB92HbA4FP7rvE608wlrTzlyvdlI6DNJyihsI3h8XzhvOeZ9kF5F
	4N+/fJ7F7JkXLocTYi0ERr91KqpC2MHqCMWR+VyvtSoDM+OV/b/6zDzW2Lze60js4xGGj8uHjfqqK
	s7LIKqCjQQLJIw3f3o0NcLloraQ+/RsdiQH6zaAiGTZVmJ+YUlKDlb2kN5Kkp+LvxTQbRg7r+OWDt
	E1JRZoEK8JSmR//p9t1T/uwNZ0COqcpL35Vs9/1RxgplWXJsg5LtXkSnMHaZwtNEBAt59cAL3GnfB
	9gHJuqybIz4iNuduwVgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFII-00000005BXQ-01vx;
	Mon, 12 Jan 2026 10:37:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFIG-00000005BX1-053F
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 10:37:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CAEWXZ1315820
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 10:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=; b=TjguIGn3WreHU2Ir
	o1FE4ShcE8WH3AdB0vNY8q3/Da3DZ6GuPr1nOFhm8YMdTKlE2E90hn1fk1YSezzI
	dVTl7//NOf3WTiAqqu6VfjLXzUTVkHBtwaR0/d0K+7lTEF4wNs8yuyYAGkLfRVgO
	9tZaJd6M9Yt3GxRdVJOzP9wyB/O8a5+tByY9n3Nzd3EztbdpHlYrYvDMaQ1XKQAj
	/PQyk3mMsslhhG7WRzrtbqgVVA/AZfz5EjWWqG0nR/kvMSkR02wV13cjuzDpg0zb
	Un85vRTU7+GrNfxqxr2FezvAboztz8BzLM8wgZ1+DAZ7wsgH1Bbudec5lgfnAX+a
	x6Zd6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hg1wm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 10:37:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f357ab5757so23027621cf.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 02:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214221; x=1768819021; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=;
        b=BY6CieTZNfePKwI9wRI5fn9rMkuBp7VsbbX3VFBUk9QPVKQqbxbvMuaPK4FPBl2Cis
         uzjUkMQU912EHGJm1n3w/IPF4DVeoUoSsrQMaYVshG2R2YhHrUHSx3mpR097Zhx9d/TS
         c6hMpXGxQCcQzN0QM+muP++g0PkV/hF6087WvakECpyteooYQQDH1npiy+u6dWpolr/y
         3OVwFwVXjbzZi39OiEi1HEjZ+fdClGE6oENyjJtjFRdUTmGdM9XFJEKe6TxWEcpLU21G
         XtGiIKcxv0UvMW3x4+D+/0NFXyjAkatioIPtdZNeJH/z9dxyFy2xn1KvvfNvTPsFTjbk
         7+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214221; x=1768819021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=;
        b=RlFUlhGl26VYqDWhHOr3NMfE4Mnou2vSCgoed00UR5h0IoPVbyiTfXKjLSj1msRY4w
         GCTx+ZxCXpfk3pq5mgBOHCVy8km5jIf6cBoxrJJTRFic0MPV/+9PmMdx52lR2g58sfdI
         gagVR99aiRuLyVk1zo9oA4nxSt9z426jhu2tmYXupkPEG8/W1GIOEUvpRrpSZrRUhIc4
         xg6dVg6jNQdt5YExRClYDUL0arO9v+tyrQtqkUyctXx4xD0b3NwlIQUvKqjlTKLSq31u
         3WtB5F+cgds9EquWwAxiOtjxSEZc/csDiC42SR8TDG9gWsvmHcPH0x8UY2kVMSjZs/Sb
         1nAw==
X-Forwarded-Encrypted: i=1; AJvYcCV+A+Vq+miWHmle+jhFd0pOx0td0gFUcHfj+I8kbq1gyUWn2a0c4YcZAGIYc+ybqBPxAjoywdaroFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVW9W3o7n7/oXMvXg8qGB+8Fmm82fiNXXNCeBBfrAFO15nUDKo
	/SnAZJ4Prdl69k10+jBEn2SfUWUPXDoVivTRjN45JnDqCpint0Xm92sHU6ebaAmtcIpQqvcdZIH
	siBY5tWOZcPG+Owzm5FwUv4Qihd58PhpisXnBv/h5c7pZPKAm1cEhop0ZzSPL/XkTLYqj
X-Gm-Gg: AY/fxX4XxN6hqINZRd2LOBU/Lfj9E6LnNQ4w0xiVtAWsenvSWP94NLweYhXj0pVGvpL
	PR2gGE42qXBp1a56BKN04qUSryauqV5M4X9BNeVaXqFPSEz1pBc+DTEK6jnNg+EDiOK7tXtaZOf
	u0a/NOQsdbR+pgn8vNHCvT6hQev6UfEOnsaJ7mCzy0ZRdvo74bNguU56++hGD9M78ZJ399yUy0O
	VeUY62fPnwh3YTdwnBTHyMRZmYEjIE8GiycChXQj7f8KBzr9CE7xo8c8PFgvXoL6uRl+k38QJq+
	d3I21BAkoprMIsKgSstP7A+BBsGmJ9LTLrmf61vfsnJWIyiAzqkEgWvxClKHKO5vGBLJFwMR7Tm
	rsNyW3xbiFJtpdIO3Sddnn8QqJvmJkMbQZWBdwQasZmnWyzbRAgADiL7DkJ19foDV7kc=
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr182682891cf.4.1768214221643;
        Mon, 12 Jan 2026 02:37:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwPXJrTbjQzQTcAzWAfSbG7+Ps1FzbEAnhMHNBzRiaoZEtHpgn0LcFOeGeJ2lQqXcP7SdxSg==
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr182682621cf.4.1768214221046;
        Mon, 12 Jan 2026 02:37:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f1e95273sm664311266b.62.2026.01.12.02.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:37:00 -0800 (PST)
Message-ID: <534e88a9-6863-4494-a565-859eeae6fc9c@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-4-pradeep.pragallapati@oss.qualcomm.com>
 <yq14ior5yey.fsf@ca-mkp.ca.oracle.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <yq14ior5yey.fsf@ca-mkp.ca.oracle.com>
X-Proofpoint-GUID: xBn_d4hWEfLNYVecNQ3Hs7EpLpDoJPKp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NCBTYWx0ZWRfX4vHYylDI893b
 DTy+dAXJFtL1TshUEe9WIZJQpsBmyybYKNvCaJZ1MW4lrCO3UaetnR9/v5gU3TCZqMWPFjQfvZ3
 dayPEOfq1Pq1tsHRNiLlKNbSHHYS93jC2+8I93sBIOXnHW6UTp8CNWgqe2T+k1TVpATio7sVbCA
 OYsNgq0paPipcXeciJT1RJ6zuxb+3bJjxZo203AfNFhFm1xDcS34C5B56ztqrDmkTgFu7dG59wm
 zyRU3xwWWFmI35KLYizwn5lKQ/l5AQowlnqvwilqC0AVsR7IPeMvX2MK6gD1vaQbKC5QNhFDIBo
 FdRmq2ZjVXzxThiF3jCXRQ/2fRtCRLyUtKobj6pa5Hb6kzzd4LWh+bSEBidRPtv1A9e9kHqUYY0
 XAqMbXJ1TEnWOU3yaFUMeVgGAeboZZEvj2FnCVUeQ4oLDo5wNKH9yHWLySXAnqe8YF4iJM6Diri
 ztJC4whtbNFysuf+NIA==
X-Proofpoint-ORIG-GUID: xBn_d4hWEfLNYVecNQ3Hs7EpLpDoJPKp
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=6964cece cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8jcq0VWYKE_BtxzTVVYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_023704_071966_4147D0D8 
X-CRM114-Status: GOOD (  11.57  )
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

On 1/12/26 3:59 AM, Martin K. Petersen wrote:
> 
> Hi Pradeep!
> 
>> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> This does not apply to 6.20/scsi-queue. Please rebase, thanks!

We're taking the dts patches through the qcom tree, that's always been
our intention and the default expectation for cross-subsystem merges for
years (we'll take these ones too)

Do contributors for other subarchs only send you the relevant bits (or
do you grab their dt changes too)? Do you have a specific preference
for any of these settings?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
