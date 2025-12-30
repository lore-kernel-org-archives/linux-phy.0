Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3B7EE01FA
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 14:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p//2aEK3Tf+lTPzIpH/+Mwvai5/zzBAw9xv/rKtlks=; b=wxNn6AKc/yfwnB
	mPb6qjll9e7xyj3aKqLyLVuizgYXXBPsTaBw/0BBQ4c3TUq4oOVAWt0zYLLoQ7JHy+CHfIKcI9jjV
	om01pggwk47873wici7WT5NDauUmwKla5pMnfmoDgyWZrk1tBohAXSO0YxYMvu95Nc8JRBADBfBXG
	UMHgX9QlBguzsaBu1vTNxyCYfgJ76ZYtp4+4nMxeWf9u1PBtn3DjCGOpb/U+4kjpsMUbuQ3P1CAIC
	x9Vd904640BKu476UOuycUIuRluzzNwOrQZwWjDV01AAEsUro4Y9fiBobWzV2T1JhjS7CqAESbNJ2
	VoFQjmUgBL9HcYIMikMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaZN-00000004vbs-3SHg;
	Tue, 30 Dec 2025 14:19:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaZK-00000004vbF-2g6e
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 14:19:27 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUEAmYH3541042
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 14:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=; b=a6dhvq4vwoL71RvO
	Xx16r31SQZltWRCLbLmFzf4JTNXca1MrLSxtJs9GMkwJ+CWc3kFIJoGSW4C9qrbo
	ED+bQo5ADE2GNta1CzaeO4E5D4sCcSlFi4sAg741QeUNXx6bNKteEPWCU7ESb6cx
	q3Dt3gVaFSiELxhw0xg0ZPN4ed+r8jIvqNWjL2Gc/MWiSmjOuQXnrS5jNjn6hyWG
	oSb3dGLWPDtaptw/TYaY6vVaEgobjh1c4zI/5z5uY0Ww/C0aJS4xY6REvJ56MnXd
	9DKB4WMsLaEu5QwxOOVsKNl5n4OjLSEatnL4kctfVtXYLH+qfbtp9xNpuRa0LD3R
	AueHrw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88yh8an-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 14:19:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ede0bd2154so32005151cf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 06:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767104365; x=1767709165; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=;
        b=gyaNZfjd/L/MQRMxhsk8ltemnD27wURY3DMUevE1iFPIWWN0z7jIy+UWm8cU5HcbXv
         3YQF7wg98vrLL/nRdhANIOMB+N0Y453d9gCnKy5Q7AjY8BTNAYQDliLKVODOQ28wZHiu
         pnUdw6qhu0sD3V0VzHEvF8f2cJIuzMzjiayo0pA7Kg08V1deeSpn2icYBFBR3rUmVLZp
         C3r1wGMAgyb3KwVa2kBJYnZ3AHUS6Ux7FUbiGsuQaypNB1Cnc4lKHf7DikZYoiMLNYRo
         MoY2+WtaZa5RDLsQAo6AoLyUMjhPDTSNZ09+aXy7QWbShNM8XkFSxBBTuXkqZtt5uBPm
         kj3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767104365; x=1767709165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=;
        b=hOMU8HG85f9KdpczllFOPqD1kTcghiPJFaijvG+VZdK1iSAwRbxuwtYwI8NFQbRvVN
         +nDvHtxU4lAOHzIcTk4zUreE3FkKuYrbd6Z2jCgPSGv/55rNR5stJinN0aUF2JE29oMM
         HCNGBm80zZdZ4/GL8GcUIHpZc6qTod08Wb/kMWkpGLHlyMDNAcFewvXiSCPwa9OeAN5J
         CgoXR99LpQedl8pc7KsrQybiCOKeByvVMrRkNXlUFCxCW4SYQX02OgPXCKzGlbh12k/v
         HnBdleV8n/AYII2Ix+Ef4JTZtutsbq7+nmMRAzVoekkHD3Uw6uc3YA+YdPtpBQjmmin5
         KhOg==
X-Forwarded-Encrypted: i=1; AJvYcCVrKdnhufAOAoouVfKeOYrijrBBnhroRDLDvqyp6MW1K9dqax1yrrcJK+WyWB/ccGHT+CCWXEVfMws=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRizkUqIdRsYRPRY/3NKetGvaoczGUjgPFuhpgnFsYAz4BrnEx
	ABA/2a/0It6/vASIjvPx7icrRUeiBrCqbonyekzBqjjF/AABLNFC4+Ik+KAEsCEyu29oA0LOsTc
	lQHANt/rlwsJhuiSOM99UQ9zJMGeJHFq1zBoRVoEMqcZgm/XFlUlPBtkKfooirmTcxHnC
X-Gm-Gg: AY/fxX5aHgM45SWGPYPJv3TnlP3hkjJ4tzjq2zJfBZTcK7OJ2vTxlyNHtbKg64fX+H5
	jAj2hE6wt+dqO/Rl+1G+GOzwuUblW2XNRyulVhLSdND5ouC2nvPTCoZLnX5u+hWCfHFqfuauQ34
	T7swGnURJM/X4SBCq7DX6c8ccNdlKYWz6r8Z5rCzQJs1Yc0J/NwkifVXjfsM7CL6ZQaQya2iA5r
	+4LP/YMUuQEmVB6NnLyRtwdG0qSJ4f7w/+lL0PACFexj52JtIa56oB8dMUZSCIhIHVD9pJIlD7z
	oyEJW4bI5cPVZ87QxogWjcKXiduua/+Cj41NJ61g+Uanrs5D//Zn2+Nt+2tqe28o8gQ5e8NOiqs
	r1malR36GKSMDsyuiAKcsQReKVCX/hAc/UX86gFpc70mgL0IRVMsSA6vOHwUY83Lx4g==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr273913381cf.4.1767104364767;
        Tue, 30 Dec 2025 06:19:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFx1y/8qUtGq6b+IQHmetUs2ly14xFse16BwCUC69fhJTx4dG27HSEMauwqQQpQxq7cqAa46Q==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr273912991cf.4.1767104364135;
        Tue, 30 Dec 2025 06:19:24 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ddffd2sm3481865366b.33.2025.12.30.06.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:19:23 -0800 (PST)
Message-ID: <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:19:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
 <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=6953df6d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QZSmA9GrXdfeW22t9VgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: meRPwqTyaJ29duswNssoRph_s9O8ACQs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEyOCBTYWx0ZWRfXyup5mYS/nFZp
 saE9Urosi3CBr72QplPmPIvcQ56M3N+Y4lHBxz3VpvBU8v13Jmka2AmdvikxYR01yo5HjPo0uFY
 vjbfNL1rkGB6dn0yzA+So4Q43c4JIWnBT33aLA7JrvGHVrhJFrM0/dROTrgLAxUpPAMw4ShD5pE
 rl2qqnWks/pRZG9k7q//0JMnx2eWMYOPn1soNDk3v/gY9MVvcXunLao0Iawmi0R4NLvQiQdil3G
 AFM69HJMlQo8+ynt4r4AXsypWJ4XLL+/oa6ltSgkXrpWk+C94HYPZNv2b9EfaJD7LQSIjUpckwD
 cHhBcwLUnLKjie1gLG1iBYqYQttVS9JOPEjPlsPHyUtxplIYLxmBDEQwsZUibeLXGZ8NKwgRWhQ
 UBGd+REhEcrhcDCoLmjp6k4mhlqiPbMLnvCJrMqxcpK3BlYx6IbbbvweyiwZLm9+tN5bIZ4xzpz
 sCefQXh46nxI96mL+Zg==
X-Proofpoint-GUID: meRPwqTyaJ29duswNssoRph_s9O8ACQs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_061926_684290_C2C7D5BD 
X-CRM114-Status: GOOD (  11.37  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTIvMzAvMjUgOTo1OCBBTSwgUHJhZGVlcCBQcmFnYWxsYXBhdGkgd3JvdGU6Cj4gCj4gT24g
MTIvMjkvMjAyNSA1OjQ3IFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiAxMi8yOS8yNSA3
OjA2IEFNLCBQcmFkZWVwIFAgViBLIHdyb3RlOgo+Pj4gRW5hYmxlIFVGUyBmb3IgSEFNT0EtSU9U
LUVWSyBib2FyZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBQcmFkZWVwIFAgViBLIDxwcmFkZWVw
LnByYWdhbGxhcGF0aUBvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0tCj4+IFsuLi5dCj4+Cj4+PiAr
JnVmc19tZW1faGMgewo+Pj4gK8KgwqDCoCByZXNldC1ncGlvcyA9IDwmdGxtbSAyMzggR1BJT19B
Q1RJVkVfTE9XPjsKPj4+ICsKPj4+ICvCoMKgwqAgdmNjLXN1cHBseSA9IDwmdnJlZ19sMTdiXzJw
NT47Cj4+PiArwqDCoMKgIHZjYy1tYXgtbWljcm9hbXAgPSA8MTMwMDAwMD47Cj4+IEkgdGhpbmsg
dGhleSBzaG91bGQgYm90aCBiZSAxLjIgQSBwZWFrCj4+Cj4+IEtvbnJhZAo+IFRoaXMgKDEuMyBB
KSBpcyBhcyBwZXIgSGFtb2EgcG93ZXIgZ3JpZCwgd2hpY2ggaXMgc2FtZSBhcyBTTTg1NTAuCgpQ
bGVhc2UgY2hlY2sgYWdhaW4sIEkgb3BlbmVkIHRoZSBwb3dlciBncmlkIHRhYiBpbiB0aGUgaW50
ZXJuYWwKZG9jdW1lbnRhdGlvbiBzb3VyY2UgdGhhdCBzaGFsbCByZW1haW4gbmFtZWxlc3MgYW5k
IGl0IHNhaWQgMTIwMCBtQQpmb3IgYm90aCByZWd1bGF0b3JzCgpLb25yYWQKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
