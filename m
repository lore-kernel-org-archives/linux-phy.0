Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61858606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 02:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E6iOcDrm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=AvEYhajk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FPs98Vz5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQvVF71dnNmceT6qgJtB5dHS+nb1KNcCF9CWv6UpkXM=; b=E6iOcDrm3dk8WG
	uIMpxT/qq1SdMS1pSrpnvqpdtiTlUqXpECKFfbRmTKpgCa40cRa5wwG7fRop3sy++3IroOfAA/fwl
	M5YEpFVlQjCFH6iqwsivXEJ8bDWxUx66EksgILPJHPmLeWQJ6UmSbe6zx7clcFqrI6Zi/1WrZD3lx
	W66S43KZvxgyE+EuviaFdMbD+TeeseMzIBhNPqsc34awaHsniRJwf+Hsm1lmYVmTdAZTtU//7Cstx
	vaR22QtglLorcavqNfENg29rR9mR3TGNe4um6WYTUwOFbYbPwHabGrh85XtUiHzYS/geccIEvJX6Z
	wYC21kVcY06bvjTiriVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzfR-00000008goS-41c3;
	Tue, 20 Oct 2026 02:33:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzfO-00000008gnh-3kc0
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 02:33:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K0tEQX3305467
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 02:33:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KyR7R/n/BMtcxhz+FKYe9XMZme440csJf63HZ+pAMjQ=; b=AvEYhajkuQt8o29d
	C7kgM0zGyXGP3h1IR7csnCpzPA/j3ob54BjBq7dqU5iRINmffts9IPO9NFd5K/XV
	3ChTj3Mtju2Bgk1b6sflMxtB6cgkNu2jiiDs5osdBaWWi43WAO1Cr8Ui3gRGobuR
	tiIng0vP37F/Jj3TRTRMS48qV6pZaZU2MbZjBWJRdSP8Ete+0wjSH+WwDpx8XQEi
	v8f50x4nEs7j7Qd6E23RWPnnAAqxO7LEgtMHOHVcQArOCBpKo0bdhieTiR3cpq0f
	BVHUHT3334MfmwFDeC8QrRvrX9ghdrNlzeKu+vZWDLYaxOSVZMdRE0Z6O9x4L7aA
	8RIV2w==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5srfvs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 02:33:28 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1383723dfddso5350495c88.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 19:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792463608; x=1793068408; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KyR7R/n/BMtcxhz+FKYe9XMZme440csJf63HZ+pAMjQ=;
        b=FPs98Vz50kHghNtSKaO/sH10D/AoTsdsnQv88FvT30ped3UC7j4Aa49pGdLYP8eH10
         p/J+/CvrMxkHqBIBYzokH5sFNzRvMi0GaF9x5D/CLxuq5GiPW2ogORJdKSQAjEZ32CIg
         Y9+uBO/Wd5IuHS2fMVU5rC0EXWk6uWBURBounDJP+KgX9T6n2GS6Z2yLRuPHt6I6cw+0
         cEwVeh/20GgJ6NTL1argaERmKker19+Xr+uZ7pNmXbcb/8DnWGD814pSX6WcNYdZAbnY
         vyDmY7AI7dSPz7j8oy1IHSCKAgxs9nxQqfgK2oE7LuL8+AmktZ4MIe3+ceTeHUvODrFC
         WzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792463608; x=1793068408;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KyR7R/n/BMtcxhz+FKYe9XMZme440csJf63HZ+pAMjQ=;
        b=XIumjdOVp2KKkxBQAH1UAbt/sUjUn86KL75zos4SglE699TyFwKK9SfeClCkeM5xte
         Dimbjtxk/sfjmGoNoySWuC9LxNmYC8HWGrTFZhKxdUubL4ShcM6Wj+bz2vI3M9lFrh24
         iR2GGx6aa+xOvkG5KVpqt+7icSJPYLvp0X8kLUXIRuaejZJxjFWjRM+BDHZYlgF/++Kg
         XBqUNwlAgR5EmtPrLO8g7pyKmk/HQ38TZxH1tz7H75lmNicYs00WOYHBcDJJrt/zFOFm
         Q0DG+EgABcoehiilyYWnIkGpclW4RFDpEgW4HrpgZz7Kg2BdtvXhDG89NUKzDL9v+bhy
         mkNg==
X-Forwarded-Encrypted: i=1; AKwUvBwEv27eTiRWaOj/eOdt7ZfRaB00UaFn3Xd5KQk37Cx9qkXDdAdRJgHSiGwvttmCjHMQ9tVND9H5mhA=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7CoftTfnhD76u+GwAwZIjQ05NtrNrZ+CB+ImDqylPUEzUBcBH
	46CxAsxMoNZJXvng02y+UKXhVNKzr8s6Rr1ynyRBXgU9WldFm4zLy1yNmnAqH/Ccj4ksQHqTif+
	Bu+R8Xhj4McNbsx3Qo+izEU+AldnR3uHLFHDJbfK+WQghpv8eZiq144l/z2P3ZfTuXGpo
X-Gm-Gg: AYBFou3Ck8vzYq7sojGB7Rh6Gx8iURtG0LAQ6zqeeBByPxDVYX/Rgg9bA6uLcGyox4C
	gwwXOufFPp4g5CT8og33gGKdNVpRk/e9qzVyoJsz43GZTzBjFgCri2FlHvA699dFxUrf4s4yhqd
	vfEcMQJuhTBmcUHwQSxxQKOJV6SS+ZJvNqoiFlpVo1qIBv/r2vDIiSFiyH165ybe5xYOR2qK22s
	MqEd/WbOsSpi5xTr3rpk1eckgD1Sx1vsSavhblaesqPT3DKpnWsIorqWOciGuE4oPcGPz89P42P
	zXf7eEC6GQK1y5R2rb2/o7OpLOYx9hPKmWGKUNlBwm0/oXIUVkKv/3zgeSABd6GtY1D/xtQeCiW
	tNTXTQKrxDAyMlc9+tI0AglwKzpkUEoy7sHM=
X-Received: by 2002:a05:7022:1709:b0:144:fc5b:2121 with SMTP id a92af1059eb24-1851257915bmr10416489c88.17.1792463607829;
        Mon, 19 Oct 2026 19:33:27 -0700 (PDT)
X-Received: by 2002:a05:7022:1709:b0:144:fc5b:2121 with SMTP id a92af1059eb24-1851257915bmr10416462c88.17.1792463607203;
        Mon, 19 Oct 2026 19:33:27 -0700 (PDT)
Received: from [192.168.1.235] ([47.231.130.140])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-18319d3b880sm30462917c88.10.2026.10.19.19.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 19:33:26 -0700 (PDT)
Message-ID: <6b9e2f4f-70e3-46cb-9c81-48df7a8e1cbe@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 19:33:25 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] phy: qcom-mipi-csi2: fix -EEXIST probe failure on
 single power-domain SoCs
To: Bryan O'Donoghue <bod@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <0L6D4EGEbw9SabH4L1sIcfqiZK6SmLBEjQEK5ljwkWxWQyXebQ9BNv71oBQmg61s3p8ja2Se4FlB5VtG5EdMXQ==@protonmail.internalid>
 <20261016235502.2274268-2-anusha.nandi@oss.qualcomm.com>
 <fc2c2f40-8a55-442a-9b0a-d73f040af60d@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <fc2c2f40-8a55-442a-9b0a-d73f040af60d@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAwOSBTYWx0ZWRfXwIPGQb1uQKln
 5wvKEmjjxNYh5oKyOofTNHNUoHKM4A3tRKPyussEHyYIKYkyU7ZTcnQcK/GEzQhoDHuAGqfZXQC
 J9BbkKGwtYLMLR62P2ejEwpTxAyoPvSP/y+7MUOtMidWLN5dEnkSxZi9WfZv3wbe9n9mmJ7iRcZ
 mb499fOp44ZXwAAUcy5czzEF6hjUCdZ4lVhN/nd+cHYTAcU5tC0H9atsrvjbmlSiHveWXklQccb
 p9WCMeEfZ0+uwZd1QH/YJ0nNIkLSWx4L7FjWGEnVcHMhpZiqOUOBn3ACEsn5syygW4+PzAswp4H
 rgDQQ2kdop93z1ghmExVCRX5ftTmzQE4zmUk4nBGxVNPFL6btuor1FR7MGvYSWpb1EVZixNm7zX
 AL3hbHZSIXNRU1CjLe8gH6wlWK1BKgiPW/AnDSr5yT52/+Eyjmvr81V3PVBBiBP5E9qazVOk1VH
 L0R21NjAYT7x39fMLHQ==
X-Authority-Analysis: v=2.4 cv=fIusTpae c=1 sm=1 tr=0 ts=6ad6d2f9 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=TcmD64HtHlR11PSYA/r07w==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YCULunOEXgq0kEsXk6YA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: P57mPDJtfRG1z27SUCsy8-bJZ6NiNzFd
X-Proofpoint-ORIG-GUID: P57mPDJtfRG1z27SUCsy8-bJZ6NiNzFd
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDAwOSBTYWx0ZWRfX+/SdiGaddUmy
 U+4Enrp0cY3kj3C4NPDUGZah+dAIHulJxlJXCSiPsn7nGl0ZWixtjZgRtxyqva2oR1BnVh3Sro9
 2NQPu7BEpWRUnU7Mi22dZ6TjxlN+Isk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_193331_046552_353AF3D3 
X-CRM114-Status: GOOD (  30.02  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQnJ5YW4sCgpUaGFuayB5b3UgZm9yIHRoZSBmZWVkYmFjayEgV2lsbCBkcm9wIHRoaXMgcGF0
Y2ggYXMgYSBmaXgKd2l0aCB0aGUgb3RoZXIgY29tbWVudHMgYWRkcmVzc2VkLgoKUmVnYXJkcywK
QW51c2hhCgpPbiAxMC8xOS8yMDI2IDI6NTUgQU0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4g
T24gMTcvMTAvMjAyNiAwMDo1NCwgQW51c2hhIEFydW4gTmFuZGkgd3JvdGU6Cj4+IHNhODc3NXAs
IHFjczgzMDAgYW5kIHNjNzI4MCBlYWNoIGxpc3QgZXhhY3RseSBvbmUgcG93ZXItZG9tYWluICgi
dG9wIikKPj4gb24gdGhlIENTSTIgUEhZIG5vZGUuIEZvciBhIGRldmljZSB3aXRoIGEgc2luZ2xl
IHBvd2VyLWRvbWFpbiBwaGFuZGxlLAo+PiB0aGUgZ2VuZXJpYyBwbGF0Zm9ybS1idXMgY29kZSAo
cGxhdGZvcm1fcHJvYmUoKSAtPgo+PiBkZXZfcG1fZG9tYWluX2F0dGFjaCgpKSBhdXRvLWF0dGFj
aGVzIGl0IHZpYSBnZW5wZF9kZXZfcG1fYXR0YWNoKCkKPj4gYmVmb3JlIHRoZSBkcml2ZXIncyBv
d24gcHJvYmUoKSBydW5zLiBwaHlfcWNvbV9taXBpX2NzaTJfcHJvYmUoKSB0aGVuCj4+IHVuY29u
ZGl0aW9uYWxseSBjYWxscyBkZXZtX3BtX2RvbWFpbl9hdHRhY2hfbGlzdCgpLCB3aGljaCBmYWls
cyB3aXRoCj4+IC1FRVhJU1QgYmVjYXVzZSBkZXYtPnBtX2RvbWFpbiBpcyBhbHJlYWR5IHNldCwg
YW5kIHRoZSBkcml2ZXIgdHJlYXRzCj4+IHRoYXQgYXMgZmF0YWw6Cj4+Cj4+IMKgwqAgcWNvbS1t
aXBpLWNzaTItcGh5IGFjZTYwMDAucGh5OiBlcnJvciAtRUVYSVNUOiBGYWlsZWQgdG8gYXR0YWNo
Cj4+IMKgwqAgcG93ZXItZG9tYWluIGxpc3QKPj4gwqDCoCBxY29tLW1pcGktY3NpMi1waHkgYWNl
NjAwMC5waHk6IHByb2JlIHdpdGggZHJpdmVyIHFjb20tbWlwaS1jc2kyLXBoeQo+PiDCoMKgIGZh
aWxlZCB3aXRoIGVycm9yIC0xNwo+Pgo+PiB4MWU4MDEwMCBpcyB1bmFmZmVjdGVkOiBpdCBsaXN0
cyB0aHJlZSBwb3dlci1kb21haW5zLCBzbyB0aGUgZ2VuZXJpYwo+PiBjb2RlIGRvZXMgbm90IGF1
dG8tYXR0YWNoIGFueSBvZiB0aGVtIChhdXRvLWF0dGFjaCBvbmx5IGFwcGxpZXMgdG8KPj4gc2lu
Z2xlLXBvd2VyLWRvbWFpbiBkZXZpY2VzKTsgdGhlIGRyaXZlcidzIGV4cGxpY2l0IGF0dGFjaCBp
cyB0aGUKPj4gb25seSBvbmUgdGhhdCBydW5zLgo+Pgo+PiBGb3IgdGhlIHNpbmdsZSBwb3dlci1k
b21haW4gY2FzZSwgY2FsbCBkZXZfcG1fZG9tYWluX2F0dGFjaCgpIGluc3RlYWQKPj4gb2YgZGV2
bV9wbV9kb21haW5fYXR0YWNoX2xpc3QoKTogaXQgcmV0dXJucyBlYXJseSB3aGVuIGRldi0+cG1f
ZG9tYWluCj4+IGlzIGFscmVhZHkgc2V0LCBzbyBjc2kycGh5LT5wZF9saXN0IGlzIGxlZnQgTlVM
TCByYXRoZXIgdGhhbiBidWlsdCB1cAo+PiBieSBoYW5kLiBUaGUgdGhyZWUgY2FsbCBzaXRlcyB0
aGF0IHdhbGsgcGRfbGlzdCBmb3IgZ2VucGQKPj4gcGVyZm9ybWFuY2Utc3RhdGUgc2NhbGluZyBu
b3cgZ3VhcmQgYWdhaW5zdCBhIE5VTEwgcGRfbGlzdCwgd2hpY2ggaXMKPj4gaGFybWxlc3Mgc2lu
Y2Ugc2NhbGluZyBpcyB1bnVzZWQgKHNjYWxlZCA9IGZhbHNlKSBvbiBldmVyeSBTb0MgdGhhdCBo
YXMKPj4gYSBzaW5nbGUgInRvcCIgZG9tYWluLgo+IAo+IEZpeCBpbXBsaWVzIGJ1ZyBidXQsIHRo
aXMgcGF0Y2ggcmVhbGx5IGFkZHMgc3VwcG9ydCBmb3Igb25lIHBvd2VyLWRvbWFpbgo+IGNhc2Vz
Lgo+IAo+IEkgdGhpbmsgdGhlIHBhdGNoIHRpdGxlIHNob3VsZCBiZSBzb21ldGhpbmcgbGlrZSAi
QWRkIHN1cHBvcnQgZm9yIHNpbmdsZQo+IHBvd2VyLWRvbWFpbiBjYXNlIgo+IAo+IG9yIGlmIHlv
dSBiZWxpZXZlIGl0IGlzIGEgYnVnZml4IGxldmVsIGNoYW5nZSBhZGQKPiAKPiBGaXhlczoKPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IAo+IE15IG93biBwcmVmZXJlbmNlIGlzICJBZGQg
c3VwcG9ydCIgc2luY2UgdGhlIGRyaXZlciBoYXNuJ3QgYmVlbiBkZXNpZ25lZAo+IHRvIHN1cHBv
cnQgc2luZ2xlIFBEIGNhc2VzIHRodXMgZmFyIGJ1dCwgT1RPSCB5b3UgY291bGQgbWFrZSBhbiBh
cmd1bWVudAo+IHRoYXQgdGhhdCBpcyBpbiBmYWN0IGEgZGVzaWduIGJ1Zy4KPiAKPj4gU2lnbmVk
LW9mZi1ieTogQW51c2hhIEFydW4gTmFuZGkgPGFudXNoYS5uYW5kaUBvc3MucXVhbGNvbW0uY29t
Pgo+PiAtLS0KPj4gwqAgLi4uL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5j
wqDCoMKgIHwgMjQgKysrKysrKysrKysrKy0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTcg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi1jb3JlLmMgYi9kcml2ZXJzLwo+PiBwaHkv
cXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLWNvcmUuYwo+PiBpbmRleCBjMGE0ZmEyMGVhZjAu
LjAwMjg1YmU5ZGQ2NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tbWlwaS1jc2kyLWNvcmUuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1taXBpLWNzaTItY29yZS5jCj4+IEBAIC00Myw3ICs0Myw3IEBAIHBoeV9xY29tX21pcGlfY3Np
Ml9zZXRfY2xvY2tfcmF0ZXMoc3RydWN0Cj4+IG1pcGlfY3NpMnBoeV9kZXZpY2UgKmNzaTJwaHks
Cj4+IMKgwqDCoMKgwqAgfQo+Pgo+PiDCoMKgwqDCoMKgIHBzdGF0ZSA9IDA7Cj4+IC3CoMKgwqAg
Zm9yIChpID0gMDsgaSA8IGNzaTJwaHktPnBkX2xpc3QtPm51bV9wZHM7IGkrKykgewo+PiArwqDC
oMKgIGZvciAoaSA9IDA7IGNzaTJwaHktPnBkX2xpc3QgJiYgaSA8IGNzaTJwaHktPnBkX2xpc3Qt
Pm51bV9wZHM7IGkrCj4+ICspIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBw
ZXJmOwo+Pgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFjc2kycGh5LT5zb2NfY2ZnLT5nZW5w
ZHNbaV0uc2NhbGVkKQo+PiBAQCAtMTc0LDcgKzE3NCw3IEBAIHN0YXRpYyBpbnQgcGh5X3Fjb21f
bWlwaV9jc2kyX3Bvd2VyX29uKHN0cnVjdCBwaHkKPj4gKnBoeSkKPj4gwqAgdW5zZXRfcmF0ZToK
Pj4gwqDCoMKgwqDCoCBkZXZfcG1fb3BwX3NldF9yYXRlKGNzaTJwaHktPmRldiwgMCk7Cj4+Cj4+
IC3CoMKgwqAgZm9yIChpID0gMDsgaSA8IGNzaTJwaHktPnBkX2xpc3QtPm51bV9wZHM7IGkrKykg
ewo+PiArwqDCoMKgIGZvciAoaSA9IDA7IGNzaTJwaHktPnBkX2xpc3QgJiYgaSA8IGNzaTJwaHkt
PnBkX2xpc3QtPm51bV9wZHM7IGkrCj4+ICspIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmICgh
Y3NpMnBoeS0+c29jX2NmZy0+Z2VucGRzW2ldLnNjYWxlZCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29udGludWU7Cj4+Cj4+IEBAIC0yMDQsNyArMjA0LDcgQEAgc3RhdGljIGludCBw
aHlfcWNvbV9taXBpX2NzaTJfcG93ZXJfb2ZmKHN0cnVjdCBwaHkKPj4gKnBoeSkKPj4KPj4gwqDC
oMKgwqDCoCBkZXZfcG1fb3BwX3NldF9yYXRlKGNzaTJwaHktPmRldiwgMCk7Cj4+Cj4+IC3CoMKg
wqAgZm9yIChpID0gMDsgaSA8IGNzaTJwaHktPnBkX2xpc3QtPm51bV9wZHM7IGkrKykgewo+PiAr
wqDCoMKgIGZvciAoaSA9IDA7IGNzaTJwaHktPnBkX2xpc3QgJiYgaSA8IGNzaTJwaHktPnBkX2xp
c3QtPm51bV9wZHM7IGkrCj4+ICspIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghY3NpMnBo
eS0+c29jX2NmZy0+Z2VucGRzW2ldLnNjYWxlZCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29udGludWU7Cj4+Cj4+IEBAIC0yMzMsNiArMjMzLDE5IEBAIHN0YXRpYyBpbnQKPj4gcGh5
X3Fjb21fbWlwaV9jc2kyX2F0dGFjaF9wbV9kb21haW5zKHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2
aWNlICpjc2kyCj4+IMKgwqDCoMKgwqAgY29uc3QgY2hhciAqKnBkX25hbWVzOwo+PiDCoMKgwqDC
oMKgIGludCBpOwo+Pgo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIEEgZGV2aWNlIHdpdGgg
YSBzaW5nbGUgcG93ZXItZG9tYWluIGVudHJ5IGluIHRoZSBkZXZpY2V0cmVlIGlzCj4+ICvCoMKg
wqDCoCAqIGFscmVhZHkgYXR0YWNoZWQgYnkgdGhlIGdlbmVyaWMgcGxhdGZvcm0tYnVzIGNvZGUg
YmVmb3JlIHByb2JlKCkKPj4gK8KgwqDCoMKgICogcnVucyAoZ2VucGRfZGV2X3BtX2F0dGFjaCgp
KSwgc28gY2FsbGluZwo+PiBkZXZtX3BtX2RvbWFpbl9hdHRhY2hfbGlzdCgpCj4+ICvCoMKgwqDC
oCAqIGhlcmUgd291bGQgZmFpbCB3aXRoIC1FRVhJU1QuIGRldl9wbV9kb21haW5fYXR0YWNoKCkg
cmV0dXJucwo+PiBlYXJseQo+PiArwqDCoMKgwqAgKiBpbiB0aGF0IGNhc2UgKGRldi0+cG1fZG9t
YWluIGFscmVhZHkgc2V0KSBpbnN0ZWFkIG9mIGxlYXZpbmcKPj4gK8KgwqDCoMKgICogY3NpMnBo
eS0+cGRfbGlzdCB1bnNldDsgdGhpcyBpcyBmaW5lIHNpbmNlIHBkX2xpc3QgaXMgb25seQo+PiB1
c2VkIGZvcgo+PiArwqDCoMKgwqAgKiBwZXJmb3JtYW5jZS1zdGF0ZSBzY2FsaW5nLCB3aGljaCBp
cyB1bnVzZWQgKCJzY2FsZWQgPSBmYWxzZSIpIG9uCj4+ICvCoMKgwqDCoCAqIGV2ZXJ5IFNvQyB0
aGF0IGhhcyBhIHNpbmdsZSAidG9wIiBwb3dlci1kb21haW4uCj4+ICvCoMKgwqDCoCAqLwo+IAo+
IFRoaXMgaXMgYWxvdCBvZiBjb21tZW50IC0gbG9va3MgbGlrZSBMTE0gYmFiYmxlIHRvIG1lLiBJ
IHRoaW5rIGl0IGNhbiBiZQo+IGRyb3BwZWQgdGhlIGNvZGUgaXMgcHJldHR5IG9idmlvdXMsIGlm
IG51bV9nZW5wZHMgPT0gMSBkbyB0aGlzIG90aGVyCj4gdGhpbmcgaGVyZS4KPiAKPj4gK8KgwqDC
oCBpZiAoY3NpMnBoeS0+c29jX2NmZy0+bnVtX2dlbnBkcyA9PSAxKQo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGRldl9wbV9kb21haW5fYXR0YWNoKGNzaTJwaHktPmRldiwgMCk7Cj4+ICsKPj4g
wqDCoMKgwqDCoCBwZF9uYW1lcyA9IGRldm1fa3phbGxvYyhjc2kycGh5LT5kZXYsCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZW9mKGNoYXIgKikgKiBjc2kycGh5LT5z
b2NfY2ZnLT5udW1fZ2VucGRzLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IEdGUF9LRVJORUwpOwo+PiBAQCAtMzY5LDExICszODIsOCBAQCBzdGF0aWMgaW50IHBoeV9xY29t
X21pcGlfY3NpMl9wcm9iZShzdHJ1Y3QKPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4KPj4gwqDCoMKgwqDCoCByZXQgPSBwaHlfcWNv
bV9taXBpX2NzaTJfYXR0YWNoX3BtX2RvbWFpbnMoY3NpMnBoeSk7Cj4+IC3CoMKgwqAgaWYgKHJl
dCA8IDAgfHwgY3NpMnBoeS0+cGRfbGlzdCA9PSBOVUxMKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBp
ZiAocmV0ID09IDApCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9ERVY7Cj4+
ICvCoMKgwqAgaWYgKHJldCA8IDApCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2X2Vy
cl9wcm9iZShkZXYsIHJldCwgIkZhaWxlZCB0byBhdHRhY2ggcG93ZXItCj4+IGRvbWFpbiBsaXN0
XG4iKTsKPj4gLcKgwqDCoCB9Cj4+Cj4+IMKgwqDCoMKgwqAgcmV0ID0gZGV2bV9wbV9ydW50aW1l
X2VuYWJsZShkZXYpOwo+PiDCoMKgwqDCoMKgIGlmIChyZXQgPCAwKQo+PiAtLSAKPj4gMi4zNC4x
Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
