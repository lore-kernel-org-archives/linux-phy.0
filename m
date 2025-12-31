Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF40BEE642F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 11:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm7XajOdgGXsPAK2WO+mbSMKjg0yHEGhuMvT7f+opSE=; b=JdE6orWfwNqhOs
	res42Fywy3V2YEYa2YKZeoUNfxV53cNoxvFfU2e0qDGfL+Yd6FhecIURBD0Po4I0EimXVPQQKaE23
	B4F9/3lryKPgtjbi0Jdnt98fC/RsiWXwCpNPldHC7vF6+hCopx/UoDdoRNTb0kOMTZlDWUa9ZUSyb
	WoeUUCZfoOMzGZsApl4BQATyedIimd/7Eu0u3BjMXTZf3Epysh9Tle8pGhq0r0BOor6YFo91WUusQ
	INJN+nZVpxjFyszJYyjDlMageot3Qf5gSOF9LaouOS8NpfWNtkJep5ouA+PFPQfsaMl2QU9UE0/mh
	GhSWgQijBNM1WiGZACcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaunr-00000005w4V-0K4H;
	Wed, 31 Dec 2025 11:55:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vauno-00000005w3i-3k9N
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 11:55:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV04YM82990605
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 11:55:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=; b=dqDw7voieUyWUY1K
	cP+l7X811toMTHk3NGsD/p4B3Sj6KO03LpOFP3A+VE2n22PftpRUOM6Q6hBPTR3F
	VNI1k1oWs91qS+y5Tdmd0Q8ME55U2sHLKDYvOAWyvUVmvYpyPHo/fR+F5QT/Dx3n
	PTjbMv7q6d4jv4ndgNod3MdybK6aaTSYOjW8kgfHOhrafm2FSJFz1nJKhSjAfQBh
	GIsP+CWFMTGHm7gOibObuFV+Q9T9RgBucTm3EVcGG1X1d3hbcHl5kOuYizRbg1Bb
	E87miiS2F3nVYLFaLaFanwJv2p0NeeoTlxEVIG3ABRk7+1fHO/UBU7jBVA4V1aAu
	n5WK2A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0vdm8mn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 11:55:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so47678381cf.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 03:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182143; x=1767786943; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=;
        b=NJq1Y5bwN3lLlfw21+RGKntRR8ivAyV6cd43ldsLcMhmc31EjghaWTa35N5JSiUhGu
         RhiHWcgwzsBy8+QQca9Cv6WtHC5OYeIQXA6eXWK5og3jmZ4rzax6g/86vdDxceBBA9f/
         +aosFnLCLmKRQG1e+MGDGvrI9bfg/u1uc5dG0usP09yoxRuvDJdYPlU0Yn2UR/Hp5IU/
         LWHWQ+ZRFDXRCXE/TnAGTUFviuaUBVa3DtjtJFNx8p5nLUZO6Iw5FPmef0WHP1SgJE9p
         xbPtaENNsv0YqW6LfnTiekYH0vzosKvt3LQ6gklZGLcC0A0Vd+EMkV1m1Jf/bj14Z3i4
         HHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182143; x=1767786943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=;
        b=lC+5h0qZz6oWfYuRyXPiCSob/aokRdUk8FmwRqbJQxP4+5DCEs50RzKei2pQ75sVEi
         EKqZNXi6GoSAcpAR0MX3d/Q941UxK423QDZdkv47io+9BnpRtROHR1U0ecNsAeJ/VyhD
         8rQwQN+x+rCzR+RahpcXMn4LTo3gAVIMjH+jYrwVDSTgMc2SKKzheqyfo7/VxARNKqzV
         uX1MbFHsEj8QKySUe8X9FhIexnCQO5xPX4eK26byqmH5lj8kabreE9XLGbx0BDh9Z0sL
         T+IZgQ81Wt93QOEvryniIISAx3swlGCMD9mTLPrbTf3il53/t9hjGv3xT89inm9BrFr9
         GtZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDmRtgCDaUTezPU6eYsXHcwytPaPXJclXPwZWK3fhsPXKX+8OGncm4wTHGh6W/knv4lPQw6s6YLrc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcXrxrac1TMM6NVxWMxn4Q106mMQljxPrek1cqxHiBKXjHUrcS
	XmEzaq9pH4wPxdo1MjuMZKRxzdVwg3TxGqIPnYrS5IwUfWlRQta2TFcYvNxuggXiX3uxZ7x+5S0
	Yedv0nkm5jJ//Atceq3USHSqhiPSxlcl+yYETGqgpw8EUTeKNGoWSr42yboQuaAQVAyas
X-Gm-Gg: AY/fxX6ITC1eLtrXgnqpn0HF1TMhXiEoFovqoT+nud4N7IrnNacNWPYdho5jw5zsGPA
	JWTj/z8h4azzx6UAVYGN9nvSL0DyJfzeJw7P77WGhGKjRXieEMIJdnEd0rHoQX84DfvXT+lJIPv
	OOuTGlpeFdFe09nlUhkl7OmDxk6Mos3X5RVegr+FakcwR8K5Tf0ddM8vQ/9Mxfv8Vtk7wsObDoF
	cVJuuKVMErm9EyZpc8kIx/qf2gvatLvYhY2jHw7QPLo8iSmCsgq6RATNlc73/EgJX+vALPDqJZy
	Cs4aqtGdUhaMQxONd8rUA7QKMa87vw/K1PzwB60DGO9S0pW75XYli68UO6bz3uPKFOPO3iUQG5L
	2F5CWaalAFEvJWpSh/Wx4eh7QTA9AXpEMMDXAkBLktQ7nEhM5Xa0IQjeKcghim6RW/g==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr283982151cf.8.1767182142882;
        Wed, 31 Dec 2025 03:55:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOvZSDvJ5tWhebJaz+nD2zV9fr+3lvFxOjJPyUKgMXYAXQDj6ZhM1nsqD5NZ3p75eeUOyj/w==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr283982021cf.8.1767182142516;
        Wed, 31 Dec 2025 03:55:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9105a9c4sm37947767a12.12.2025.12.31.03.55.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:55:41 -0800 (PST)
Message-ID: <4e480e00-c112-4425-a5c3-bcae444846db@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:55:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dfONHHXe c=1 sm=1 tr=0 ts=69550f3f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZKaqVTGohnnJfaf7M5wA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNSBTYWx0ZWRfXxggwgr7pInmD
 MPNsPp18wFxlMS5JtlE+G4H/m2H4VQcOQKonzhdEJ2CHt2ytjAioHbHZpxX4I70a/AFvK+HwhBH
 gTkLeNmZ/3rouEVrfyTJ2xoNWWUDQwYz4ik8y4Yi/aFP5hKFe+5FK+cfG0NLsoGRR7UDdu4jqJf
 SVjmkBU64yq98c6McGp/DJcVn0cZQr5hiZGiXDvnaoeihvXM85rZ5fXjWxhLnEvgMVHFifEKgHP
 Rptr1sYJIdpTw4ZRUYR1wVomjDwYPHND9ovHNQIp9Pla8REjb18TxTDy0WEzhiIGvpKy+PztUWu
 /wqqydHzSPxNWPCtzqDdzUgFG+UfOhyMkO8xXZVrl+fJbooMS3MubShvRLMkIj4fthjm/8cuAXf
 SjjN5jSFlhBP7SbeVlqj8BRUn4RKgLfjtOOLHV8qjVfu+aHDmD7VRi3CQzol5PkM2m7/3jEayg2
 buf+t//gcBv0K2hJ3uA==
X-Proofpoint-GUID: 5xELNy1pXy644bIY2UXj5fHEpWCoVB1P
X-Proofpoint-ORIG-GUID: 5xELNy1pXy644bIY2UXj5fHEpWCoVB1P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_035545_055666_CB39AA3B 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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

On 12/31/25 11:19 AM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
