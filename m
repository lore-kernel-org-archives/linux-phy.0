Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88EC9EA3F38
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 10:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MIM5g+3DXjfUpCdEHtlVoa7Don8wKLfay5qUBK9Px4=; b=K/fCXrBrID2iJ8
	6twvWBhMjIfj1tUad2RhV86MWEPNbZKAxuqC+2eV/Mpdb2c4Anu6JP3jRDO61y5NmBxYFzvQpP/DM
	F7xBRZM+LELM1IHt77ruwVXfeYyXX+2iv3ax1hl7kYj64oiKOCkOZpJ1IVzXG3ZUYPKGuydZR01VL
	7kl7iVOQy+wDwt9ZShqi5RB0S569g7kk7Elb0j3gvg//zbV9wkqJsJgEW1m+qRokn8Q1eQgH6B+Pw
	cjYIEYzZrwfo34EQtUZf9BKtvcD570Mj6oIoxlZvUJURHvl532bQlE5Onl8nP0Os9LEu+i/SYpuSW
	0Zvy5kH3cSdlfiEhgbYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpksh-0000000Gphi-0kbv;
	Tue, 10 Feb 2026 10:22:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkse-0000000GphN-0gLd
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 10:22:05 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A6xl40857877
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:22:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L3YjCD5VIamP8jn5HK0Atw0KqI7eQ9Ow3MU1kuHgTnM=; b=Qs8BXQx1Am1qt5NU
	mspb3m8KZh7Gcj703Q3L8v1EeC7iyGdcORhfVyPZ8nGNj4JI3961fDIK1C1z7JPk
	9yQ5/bGOFEFcpEUm6ZTS9IIcCL0QEYHRmQtYDw01U0OzwS8Ad+bmRaNEiHWc7gI1
	gmvGqGUujPMwaDNizDmBmtR9tXNLATpvlMzJMEkemM+YFSJgDMDyQT+7UD+/BF/k
	S5IjlxYlDnuNjdOdAPkebCyixvWCtv08YvFU89+2hSRDECI/vQqpUkYwsazJWz8i
	tuB711GT07RnzvhWNu0UNHW6YeGqYKXPUrKp3cys/wYhBl/cuDuZUFfgVr6v8F2V
	r2bE/Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7ga63th5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:22:03 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6dded42ec4so2194309a12.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 02:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718923; x=1771323723; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L3YjCD5VIamP8jn5HK0Atw0KqI7eQ9Ow3MU1kuHgTnM=;
        b=K0ZTMh5g31KymB9SoM/GrjekzXTLJgbgteeQTAgKsWwPnvAwC/W9yRK/e5vAKQGtcI
         a1qaIHc4QXCdIYERy9DPCEJLFBjb3xlemeivG2LXinYo+TTaKEBzhefwUar3eQL0vPiq
         mkkP6r0fASkg02nc4mFDnc1Eo9G7SzFviZ07UqXiNQZes3v00EmvcU9le73Wxksuf97A
         zVqVwY2W6AOvq8ffocIGgAw3xKolCcEgwWHNdrJKWWOUlICCpjZOlXE9DxBBUZmxd6MQ
         o6Nb/jB/dmmxDe3dl8bvmnqQbV0cniq4hFd6bmZxEja4CD0vhqE6Zd592FYGh3j9sHpM
         d+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718923; x=1771323723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L3YjCD5VIamP8jn5HK0Atw0KqI7eQ9Ow3MU1kuHgTnM=;
        b=Yf7HY3B05BBfZvq0hVofW/gaIOFcaE+ch/MNKp+Emk6C4okvxExO7okZ90aLpHHIOd
         s9dZj4AYGLzNqMJ0Wig7K7rQz2Haphe/RLrRSlhe7uAIgit+qwyxSnRMGv4/cwfdJbHx
         NJqE3UTu6UFKtibyqnO3xt0SmF4blAcBPTwbCw5NIBqrRKDqwFtusYJ951/Yhs/JzEue
         YO1tsSqtCYPUVaAP06cDJ0/+9RvuPhgRZy+/OxC6BfrIkTzxjaP7wkW2DPYlgD7YnsFJ
         aVV7Cu6rZOZ0owtVin6Er9yniDeuMQthVggv3J5L0cb8pCX9CAl3h4L0NRb8hYnC63He
         ujBA==
X-Forwarded-Encrypted: i=1; AJvYcCUGJ/mICgT5qS9ZIsQejpvFFwnFTeegPIytKwawieFQeihyaKH/V72lBH3mwG0AQT4EloxqA3jbwCc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCk8I9GwpKKF4MCfh4kK3DINlB4UwOGXpCqSdApySAHKBYyP3Y
	4YCBwwt7JM5f1IhPL2nLak6iunmViC8bC6nipHrLuzAokgbleTcbcnddSpqqNYnn5AiBJV1mqZu
	a9Fw08nkWss8EW3DAUd2TKWDQ04KnkE9rOOalJqS9NMCwNSfQ1wRffYuhSDknYYBYSVmI
X-Gm-Gg: AZuq6aIeGX6Dcxo5oK81W7sGQwuLVVTUuzo2ZHAf5QylioCk1fq8zpNI2cPpMI+jYhu
	cMp6oNPNGAQChNSVxtVeS7Nb6bUX4T0F7IkOh0hw8GtCikYH1+zCaQiBR/qgOgnSdS7io1Niisc
	IaM1Uyz/7VQqsAhkawOcwqxOCJFmfe2aJjH5fyy5NjYg5KAqGNgEfzcJlzbgCKAfZfB1FpsFMix
	2ohoUpI+yPQpkMyOMASRekCwfSj4N9GmKiEpbfyTzyh5bmZO5ErpXnZCu831cZUWUUqVppCqOzo
	Wswno565aAw/qCWoTe1eOrEMoy6jyrzqIwgkxk1iApxaV0282YsSa+qmRSJwSOw1NKVNd5ATmEJ
	C1Od9vdZWysJG4/Cn79liNjpj3e1pqdGrb5FjUQ7IYQbpA4pT/7S4R9Y6zLZRQdS0pysNZElxAE
	5AR43jY9ynw9Z8EzQ=
X-Received: by 2002:a05:6a00:9513:b0:81f:45d3:adcc with SMTP id d2e1a72fcca58-824879a5af8mr1785782b3a.18.1770718922713;
        Tue, 10 Feb 2026 02:22:02 -0800 (PST)
X-Received: by 2002:a05:6a00:9513:b0:81f:45d3:adcc with SMTP id d2e1a72fcca58-824879a5af8mr1785760b3a.18.1770718922195;
        Tue, 10 Feb 2026 02:22:02 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824418b7cc3sm12949398b3a.51.2026.02.10.02.21.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 02:22:01 -0800 (PST)
Message-ID: <c2d50c56-5a3b-41f4-90a8-1ebdff4dd898@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 18:21:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
 <nxoukhntz3mn6m5qca2lk6wubhwlmxoldh6xpyxx63voseiw35@5rrwfryx6vww>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <nxoukhntz3mn6m5qca2lk6wubhwlmxoldh6xpyxx63voseiw35@5rrwfryx6vww>
X-Proofpoint-ORIG-GUID: rbXmyVCt5RzjHHAF9sSP8ULH51e3RwfI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NyBTYWx0ZWRfXxPYJdJvVXInr
 xivzjt2I1bsBP60Evh0504XAVgw4PKlK7OcOWEQPnxd3zUF/iYVNhCKPR5dYKyTC0ASBi/D5ed1
 GLW7Gx4NNuLmEZeRSy/VhMcbGqv7fIkLqFZZadelXUsxjAjmqJ6fcSG9G1zOQPujQ53g47eKTGy
 gAAj1ESmtUpLiW8kE5tyEEz/94KP2/UYi0HuQknY7Ly/0nCxX3ULJc5/BpCZy06BuxlFYmZt1PW
 TVTw9wrbLrQsTnuxKQLGCYHGueZo8PJxzJ6SkpCwOFvolcNuCchDg02WQYBDCSCjLmg+czA3asP
 ++C+uXCJ+flETHRr1fPAo+Nd63lGbwmWfet8NHOhsqVwk1q1ExA2mNVRj3FvhCrWAX+BCsPYkeV
 HNdTEsZISgDxSp6zyn2aF6qi2LrhgPD1u1iIEwZkMh16P9Jfs0GHrspHC+QleMiil9s1Ee8H1vS
 Xvh8tmuJfDJ3+KdER2g==
X-Authority-Analysis: v=2.4 cv=WK1yn3sR c=1 sm=1 tr=0 ts=698b06cb cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Wno69rA-yjVtWsVoYkYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: rbXmyVCt5RzjHHAF9sSP8ULH51e3RwfI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_022204_209130_9A5FF8CD 
X-CRM114-Status: GOOD (  21.18  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyLzcvMjAyNiA2OjE3IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFRodSwg
RmViIDA1LCAyMDI2IGF0IDA1OjIwOjU0UE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4g
SW50cm9kdWNlIHRoZSBjb21fbGRvX2NvbmZpZyBjYWxsYmFjayB0byBzdXBwb3J0IHBlcuKAkVBI
WSBMRE8KPj4gY29uZmlndXJhdGlvbi4KPiAKPiBNaXNzaW5nIHRoZSB3aHkgcGFydC4gSXMgdGhl
IGRyaXZlciBwcm9ncmFtbWluZyBpbmNvcnJlY3QgdmFsdWVzLCBvciBpcwo+IGl0IGFuIG9wdGlt
aXNhdGlvbj8gSW4gdGhlIGZvcm1lciBjYXNlIGl0IG5lZWRzIEZpeGVzLCBtYXliZSBjYzpzdGFi
bGUsCj4gbWF5YmUgUmVwb3J0ZWQtYnksIGV0Yy4KPiAKU3VyZS4uIHdpbGwgYWRkIG5leHQgdmVy
c2lvbgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3Mu
cXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1l
ZHAuYyB8IDg2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPj4gICAxIGZp
bGUgY2hhbmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4+IGluZGV4IDEwY2JiN2Q5YThhMC4uMzg4MjI2ZGJh
ZDdmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+PiBAQCAtODEsNiAr
ODEsNyBAQCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgewo+PiAgIAlpbnQgKCpjb21fY2xrX2Z3ZF9jZmcp
KGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKTsKPj4gICAJaW50ICgqY29tX2NvbmZpZ3VyZV9w
bGwpKGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKTsKPj4gICAJaW50ICgqY29tX2NvbmZpZ3Vy
ZV9zc2MpKGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKTsKPj4gKwlpbnQgKCpjb21fbGRvX2Nv
bmZpZykoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApOwo+PiAgIH07Cj4+ICAgCj4+ICAgc3Ry
dWN0IHFjb21fZWRwX3BoeV9jZmcgewo+PiBAQCAtMjczLDcgKzI3NCw3IEBAIHN0YXRpYyBpbnQg
cWNvbV9lZHBfc2V0X3ZvbHRhZ2VzKHN0cnVjdCBxY29tX2VkcCAqZWRwLCBjb25zdCBzdHJ1Y3Qg
cGh5X2NvbmZpZ3VyCj4+ICAgCWNvbnN0IHN0cnVjdCBxY29tX2VkcF9zd2luZ19wcmVfZW1waF9j
ZmcgKmNmZyA9IGVkcC0+Y2ZnLT5zd2luZ19wcmVfZW1waF9jZmc7Cj4+ICAgCXVuc2lnbmVkIGlu
dCB2X2xldmVsID0gMDsKPj4gICAJdW5zaWduZWQgaW50IHBfbGV2ZWwgPSAwOwo+PiAtCXU4IGxk
b19jb25maWc7Cj4+ICsJaW50IHJldDsKPj4gICAJdTggc3dpbmc7Cj4+ICAgCXU4IGVtcGg7Cj4+
ICAgCWludCBpOwo+PiBAQCAtMzAwLDEzICszMDEsMTMgQEAgc3RhdGljIGludCBxY29tX2VkcF9z
ZXRfdm9sdGFnZXMoc3RydWN0IHFjb21fZWRwICplZHAsIGNvbnN0IHN0cnVjdCBwaHlfY29uZmln
dXIKPj4gICAJaWYgKHN3aW5nID09IDB4ZmYgfHwgZW1waCA9PSAweGZmKQo+PiAgIAkJcmV0dXJu
IC1FSU5WQUw7Cj4+ICAgCj4+IC0JbGRvX2NvbmZpZyA9IGVkcC0+aXNfZWRwID8gMHgwIDogMHgx
Owo+PiArCXJldCA9IGVkcC0+Y2ZnLT52ZXJfb3BzLT5jb21fbGRvX2NvbmZpZyhlZHApOwo+PiAr
CWlmIChyZXQpCj4+ICsJCXJldHVybiByZXQ7Cj4+ICAgCj4+IC0Jd3JpdGVsKGxkb19jb25maWcs
IGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcpOwo+PiAgIAl3cml0ZWwoc3dpbmcsIGVkcC0+dHgw
ICsgVFhuX1RYX0RSVl9MVkwpOwo+PiAgIAl3cml0ZWwoZW1waCwgZWRwLT50eDAgKyBUWG5fVFhf
RU1QX1BPU1QxX0xWTCk7Cj4+ICAgCj4+IC0Jd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsg
VFhuX0xET19DT05GSUcpOwo+PiAgIAl3cml0ZWwoc3dpbmcsIGVkcC0+dHgxICsgVFhuX1RYX0RS
Vl9MVkwpOwo+PiAgIAl3cml0ZWwoZW1waCwgZWRwLT50eDEgKyBUWG5fVFhfRU1QX1BPU1QxX0xW
TCk7Cj4+ICAgCj4+IEBAIC01MzAsNiArNTMxLDUyIEBAIHN0YXRpYyBpbnQgcWNvbV9lZHBfY29t
X2NvbmZpZ3VyZV9wbGxfdjQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCj4+ICAgCXJldHVy
biAwOwo+PiAgIH0KPj4gICAKPj4gK3N0YXRpYyBpbnQgcWNvbV9lZHBfbGRvX2NvbmZpZ192Myhj
b25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPj4gK3sKPj4gKwljb25zdCBzdHJ1Y3QgcGh5X2Nv
bmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJmVkcC0+ZHBfb3B0czsKPj4gKwl1MzIgbGRvX2Nv
bmZpZzsKPj4gKwo+PiArCWlmICghZWRwLT5pc19lZHApCj4+ICsJCWxkb19jb25maWcgPSAweDA7
Cj4+ICsJZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9IDI3MDApCj4+ICsJCWxkb19jb25m
aWcgPSAweDgxOwo+PiArCWVsc2UKPj4gKwkJbGRvX2NvbmZpZyA9IDB4NDE7Cj4+ICsKPj4gKwl3
cml0ZWwobGRvX2NvbmZpZywgZWRwLT50eDAgKyBUWG5fTERPX0NPTkZJRyk7Cj4+ICsJd3JpdGVs
KGxkb19jb25maWcsIGVkcC0+dHgxICsgVFhuX0xET19DT05GSUcpOwo+PiArCj4+ICsJcmV0dXJu
IDA7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgcWNvbV9lZHBfbGRvX2NvbmZpZ192NChjb25z
dCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPj4gK3sKPj4gKwljb25zdCBzdHJ1Y3QgcGh5X2NvbmZp
Z3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJmVkcC0+ZHBfb3B0czsKPj4gKwl1MzIgbGRvX2NvbmZp
ZzsKPj4gKwo+PiArCWlmICghZWRwLT5pc19lZHApCj4+ICsJCWxkb19jb25maWcgPSAweDA7Cj4+
ICsJZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9IDI3MDApCj4+ICsJCWxkb19jb25maWcg
PSAweEMxOwo+IAo+IExvd2VyY2FzZSBoZXgKPiAKR290IGl0IC4gd2lsbCBmaXgKPj4gKwllbHNl
Cj4+ICsJCWxkb19jb25maWcgPSAweDgxOwo+PiArCj4+ICsJd3JpdGVsKGxkb19jb25maWcsIGVk
cC0+dHgwICsgVFhuX0xET19DT05GSUcpOwo+PiArCXdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4
MSArIFRYbl9MRE9fQ09ORklHKTsKPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+PiArCj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJfb3BzIHFjb21fZWRwX3BoeV9vcHNfdjMgPSB7Cj4+
ICsJLmNvbV9wb3dlcl9vbgkJPSBxY29tX2VkcF9waHlfcG93ZXJfb25fdjQsCj4+ICsJLmNvbV9y
ZXNldHNtX2NudHJsCT0gcWNvbV9lZHBfcGh5X2NvbV9yZXNldHNtX2NudHJsX3Y0LAo+PiArCS5j
b21fYmlhc19lbl9jbGtidWZscgk9IHFjb21fZWRwX2NvbV9iaWFzX2VuX2Nsa2J1ZmxyX3Y0LAo+
PiArCS5jb21fY2xrX2Z3ZF9jZmcJPSBxY29tX2VkcF9jb21fY2xrX2Z3ZF9jZmdfdjQsCj4+ICsJ
LmNvbV9jb25maWd1cmVfcGxsCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9wbGxfdjQsCj4+ICsJ
LmNvbV9jb25maWd1cmVfc3NjCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9zc2NfdjQsCj4+ICsJ
LmNvbV9sZG9fY29uZmlnCQk9IHFjb21fZWRwX2xkb19jb25maWdfdjMsCj4+ICt9Owo+PiArCj4+
ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX3Y0ID0g
ewo+PiAgIAkuY29tX3Bvd2VyX29uCQk9IHFjb21fZWRwX3BoeV9wb3dlcl9vbl92NCwKPj4gICAJ
LmNvbV9yZXNldHNtX2NudHJsCT0gcWNvbV9lZHBfcGh5X2NvbV9yZXNldHNtX2NudHJsX3Y0LAo+
PiBAQCAtNTM3LDYgKzU4NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgcWNv
bV9lZHBfcGh5X29wc192NCA9IHsKPj4gICAJLmNvbV9jbGtfZndkX2NmZwk9IHFjb21fZWRwX2Nv
bV9jbGtfZndkX2NmZ192NCwKPj4gICAJLmNvbV9jb25maWd1cmVfcGxsCT0gcWNvbV9lZHBfY29t
X2NvbmZpZ3VyZV9wbGxfdjQsCj4+ICAgCS5jb21fY29uZmlndXJlX3NzYwk9IHFjb21fZWRwX2Nv
bV9jb25maWd1cmVfc3NjX3Y0LAo+PiArCS5jb21fbGRvX2NvbmZpZwkJPSBxY29tX2VkcF9sZG9f
Y29uZmlnX3Y0LAo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX2Vk
cF9waHlfY2ZnIHNhODc3NXBfZHBfcGh5X2NmZyA9IHsKPj4gQEAgLTU1MCw3ICs1OTgsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgc2E4Nzc1cF9kcF9waHlfY2ZnID0g
ewo+PiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYzcyODBfZHBfcGh5
X2NmZyA9IHsKPj4gICAJLmF1eF9jZmcgPSBlZHBfcGh5X2F1eF9jZmdfdjQsCj4+ICAgCS52Y29f
ZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjQsCj4+IC0JLnZlcl9vcHMgPSAmcWNvbV9l
ZHBfcGh5X29wc192NCwKPj4gKwkudmVyX29wcyA9ICZxY29tX2VkcF9waHlfb3BzX3YzLAo+IAo+
IFRoaXMgbG9va3MgbGlrZSBhbiBleHRyYSBjaGFuZ2UuIElzIGl0IGludGVudGlvbmFsIGluIHRo
aXMgcGF0Y2g/IElmIHNvLAo+IG1lbnRpb24gaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgo+IApZ
ZXMuLiBkdWUgdG8ga29kaWFrIGxkbyBmdW5jIG5vdCBjb21wYXRhYmxlIHdpdGggb3RoZXIgcGh5
cywgd2lsbCB1cGRhdGUgCnRoZSBjb21taXQgbWVzc2FnZS4KPj4gICB9Owo+PiAgIAo+PiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYzgyODB4cF9kcF9waHlfY2ZnID0g
ewo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
