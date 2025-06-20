Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 076E5C71155
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 14:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8OljSY7JtuMqOaUEto6UztKigU30RpYWgTvFiHlxqI=; b=HmnyTI81uWSWwv
	qAsTthzVVvUml7et/6hgugoXuoSik4wJIY/+Ivah8bjwi0ts69wtf1vklhwl6ml7TQ7Um7xLIdbqR
	+PWhSJCf87yG9yt5LquGqUidVDfwwo28QNzGoMx8e4Y+KscEJmFH6SNfIc8B85Td/pASYqW3oWWPv
	a2qghSIYbOiykrSghSBdF5mZEJ3nLdA4gOra+QC7CZ4MvYssgVz6yx8PHVfYThmcZcaFeXrZILJ/i
	pu/Yfhpbt0ps5mCTgcRK4mwLGXo53VjejVWCcWVyseTtTRJZ4u5POz6XuxHGaHwuOmU4wcHk3W5ym
	5htiGu78veHk1svTrC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSchp-0000000Fqh8-3HXx;
	Fri, 20 Jun 2025 14:27:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSchX-0000000Fqcx-16TC
	for linux-phy@lists.infradead.org;
	Fri, 20 Jun 2025 14:26:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K7H9dZ009657;
	Fri, 20 Jun 2025 14:26:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tXkJ67cMbeMVJ9YZw29ONigI2pwCgXoma9QCqa3pX88=; b=RucEdvV2mPKLvwI5
	T6F7UEO3Tui9rGeReMnhUQq29KoXO/B/CYurSOFM0aaRmYzHTtsVBaf7uxgg70XI
	q1ZcCrG2Oky/TU46flij+fW9QPKUCMe1c7LS8QxMtC3hFIFTQeQ5/tHVBmnk8k2r
	uh47MfhZE6cIdpyl5rso7iOUi0METaeQYPMyqqZ7nPQaB9IowQEmpTGX0DeZP+70
	vgmR/JZhPUKAao1bcCB5T3KU14AI8OZYN8FGE+OVTcMRYRJB5PD0xi07/0Yj+x/R
	B7wCS8I5sAwmxZeJ15uSjm9+XBpTaMjUollDjpd6+u223GOZM1BNNwRXyllEh0xP
	3dn02Q==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47d340155f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Jun 2025 14:26:20 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 55KEQJbN023197
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Jun 2025 14:26:19 GMT
Received: from [10.216.13.27] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 20 Jun
 2025 07:26:13 -0700
Message-ID: <9c846734-9267-442d-bba0-578d993650c1@quicinc.com>
Date: Fri, 20 Jun 2025 19:55:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 10/10] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
To: Aishwarya <aishwarya.tcv@arm.com>
CC: <James.Bottomley@HansenPartnership.com>, <andersson@kernel.org>,
        <bvanassche@acm.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <kishon@kernel.org>, <konrad.dybcio@oss.qualcomm.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <martin.petersen@oracle.com>,
        <neil.armstrong@linaro.org>, <quic_cang@quicinc.com>,
        <quic_rdwivedi@quicinc.com>, <vkoul@kernel.org>
References: <20250526153821.7918-11-quic_nitirawa@quicinc.com>
 <20250619135302.9192-1-aishwarya.tcv@arm.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <20250619135302.9192-1-aishwarya.tcv@arm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZHYQYXUdS1hDqa-RbOPXtdnN-IZwsXyx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEwMyBTYWx0ZWRfX7wUCeFZ/MuQ2
 uVV2KVg+Gmu+Zg2yHEdVhWakIyNIdlOIQnsYwcHdtymxTLgmlDNwzImLMcJS/3oym6Qu93oGmJn
 3u0Nx/1fyU6dqbp1koyKdP+2cx7wTBB0/rIOUIcHJGJb8VK//7avb92NMoXG4ekQf0FsoWd0jiX
 PHAi+2McHCwUh1wgoMQn6lkhe2nr6MMM+n/bjSnm4sHRaAcg28u3/obBfJ1F+8v51RMUfKTSIlk
 IDUdGS1dINPxwaymt2TtK1RVK3xNiogFL7LybBl1GeLv773CzxrrqePOOe8OTmjdSjKDBeg/jA7
 uwhnKPO8USsvAbgxyYPfejU/Tj30X+hCOcAMgJp56Ewmarj/mWN8LYMND/yyA9dAEYEQCIxTwuU
 hicCo8bppRDyepwSZdOlzFaymUwnYZHFsJrRiSp8Nv2rMYIOrqVjaJv7InulMhRbT+D++sLi
X-Authority-Analysis: v=2.4 cv=JLE7s9Kb c=1 sm=1 tr=0 ts=68556f8c cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8
 a=ydUYT1VdIsrJ1VNw940A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: ZHYQYXUdS1hDqa-RbOPXtdnN-IZwsXyx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_05,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxlogscore=999 adultscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_072643_434418_4805E697 
X-CRM114-Status: GOOD (  15.21  )
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

T24gNi8xOS8yMDI1IDc6MjMgUE0sIEFpc2h3YXJ5YSB3cm90ZToKPiBIaSBOaXRpbiwKPiAKPiBX
aGVuIGJvb3RpbmcgdGhlIGtlcm5lbCBmcm9tIG5leHQtMjAyNTA2MTkgb24gQXJtNjQgUXVhbGNv
bW0gYm9hcmRzCj4gKFJCNSBhbmQgREI4NDVDKSwgd2Ugb2JzZXJ2ZSB0aGF0IHRoZSBiYXNlbGlu
ZSBib290ciB0ZXN0IGZhaWxzIGR1ZSB0bwo+IGRtZXNnLmVtZXJnIGVycm9ycyBpbiBvdXIgQ0kg
ZW52aXJvbm1lbnQuCj4gCj4gQSBmdWxsIGdpdCBiaXNlY3QgKGxvZyBpbmNsdWRlZCBiZWxvdykg
cG9pbnRzIHRvIHRoaXMgcGF0Y2ggYXMgdGhlCj4gY3VscHJpdC4gVGhlIGlzc3VlIHdhcyBpbnRy
b2R1Y2VkIHNvbWV0aW1lIGZyb20gdGFnIG5leHQtMjAyNTA2MTYgaW4KPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0LgoK
CkhpIEFpc2h3YXJ5YSwKCkkgdGVzdGVkIGJvb3RpbmcgdGhlIFFSQjUxNjUgdXNpbmcgdGhlIHFy
YjUxNjUtcmI1LmR0YiB3aXRoIHRoZSBsYXRlc3QgCnVwc3RyZWFtIHRpcCBtdWx0aXBsZSB0aW1l
cywgYW5kIGVhY2ggdGltZSBpdCBzdWNjZXNzZnVsbHkgYm9vdGVkIHRvIHRoZSAKc2hlbGwgd2l0
aG91dCBhbnkgaXNzdWVzLgoKQXJlIHlvdSBlbmNvdW50ZXJpbmcgYSBib290IGZhaWx1cmUsIG9y
IGlzIHRoZXJlIGEgc3BlY2lmaWMgdGVzdCBjYXNlIAp5b3UncmUgcnVubmluZyB0aGF0IHRyaWdn
ZXJzIHRoZSBwcm9ibGVtPyBJZiBzbywgY291bGQgeW91IHBsZWFzZSBzaGFyZSAKdGhlIGRtZXNn
IGxvZyB0byBoZWxwIGNoZWNrIGZ1cnRoZXIuCgpUaGFua3MsCk5pdGluCgo+IAo+IFRoaXMgaXNz
dWUgaXMgbm90IHByZXNlbnQgaW4gdjYuMTYtcmMyCj4gCj4gSGVyZeKAmXMgYSBzYW1wbGUgb2Yg
dGhlIGZhaWx1cmUgb2JzZXJ2ZWQgb24gdGhlIFJCNSBib2FyZDoKPiBsZXJ0IDogICBJU1YgPSAw
LCBJU1MgPSAweDAwMDAwMDA0LCBJU1MyID0gMHgwMDAwMDAwMAo+IGtlcm4gIDphbGVydCA6ICAg
Q00gPSAwLCBXblIgPSAwLCBUbkQgPSAwLCBUYWdBY2Nlc3MgPSAwCj4ga2VybiAgOmFsZXJ0IDog
ICBHQ1MgPSAwLCBPdmVybGF5ID0gMCwgRGlydHlCaXQgPSAwLCBYcyA9IDAKPiBrZXJuICA6YWxl
cnQgOiB1c2VyIHBndGFibGU6IDRrIHBhZ2VzLCA0OC1iaXQgVkFzLCBwZ2RwPTAwMDAwMDAxMDJj
NGMwMDAKPiBrZXJuICA6YWxlcnQgOiBbMDAwMDAwMDAwMDAwMDAwMF0gcGdkPTAwMDAwMDAwMDAw
MDAwMDAKPiBrZXJuICA6ZW1lcmcgOiBJbnRlcm5hbCBlcnJvcjogT29wczogMDAwMDAwMDA5NjAw
MDAwNCBbIzFdICBTTVAKPiBrZXJuICA6ZW1lcmcgOiBDb2RlOiBhOTAxNTdmMyBhYTAwMDNmMyBm
OTAwMTNmNiBmOTQwNWMxNSAoZjk0MDAyYjYpCj4gPDg+WyAgIDMwLjkzMzI4OV0gPExBVkFfU0lH
TkFMX1RFU1RDQVNFIFRFU1RfQ0FTRV9JRD1lbWVyZyBSRVNVTFQ9ZmFpbCBVTklUUz1saW5lcyBN
RUFTVVJFTUVOVD0yPgo+ICsgPDg+WyAgIDMwLjk0Mzc5OF0gPExBVkFfU0lHTkFMX0VORFJVTiAw
X2RtZXNnIDEwMDAzMjVfMi40LjQuMT4KPiBzZXQgK3gKPiAKPiBHaXQgYmlzZWN0aW9uIGxvZzoK
PiBnaXQgYmlzZWN0IHN0YXJ0Cj4gIyBzdGF0dXM6IHdhaXRpbmcgZm9yIGJvdGggZ29vZCBhbmQg
YmFkIGNvbW1pdHMKPiAjIGdvb2Q6IFs5YWZlNjUyOTU4YzNlZTg4ZjI0ZGYxZTRhOTdmMjk4YWZj
ZTg5NDA3XSBNZXJnZSB0YWcgJ3g4Nl91cmdlbnRfZm9yXzYuMTYtcmMzJyBvZiBnaXQ6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGlwL3RpcAo+IGdpdCBiaXNlY3Qg
Z29vZCA5YWZlNjUyOTU4YzNlZTg4ZjI0ZGYxZTRhOTdmMjk4YWZjZTg5NDA3Cj4gIyBzdGF0dXM6
IHdhaXRpbmcgZm9yIGJhZCBjb21taXQsIDEgZ29vZCBjb21taXQga25vd24KPiAjIGJhZDogWzQz
MjU3NDNjN2UyMDlhZTc4NDUyOTM2NzlhNGRlOTRiOTY5ZjJiZWZdIEFkZCBsaW51eC1uZXh0IHNw
ZWNpZmljIGZpbGVzIGZvciAyMDI1MDYxNwo+IGdpdCBiaXNlY3QgYmFkIDQzMjU3NDNjN2UyMDlh
ZTc4NDUyOTM2NzlhNGRlOTRiOTY5ZjJiZWYKPiAjIGdvb2Q6IFs0MzZjOGNiYmNiMThkZWI5NjEw
MGNkOWYzM2YxZWZlZGRkYzMxZDljXSBNZXJnZSBicmFuY2ggJ21hc3Rlcicgb2YgZ2l0Oi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2JsdWV0b290aC9ibHVldG9vdGgt
bmV4dC5naXQKPiBnaXQgYmlzZWN0IGdvb2QgNDM2YzhjYmJjYjE4ZGViOTYxMDBjZDlmMzNmMWVm
ZWRkZGMzMWQ5Ywo+ICMgZ29vZDogWzE4M2QyMjQwODM3NzNjYTRhODRhNDU4ZmI2MDhlZmVjZmYx
OWUxOWVdIE1lcmdlIGJyYW5jaCAnZm9yLW5leHQnIG9mIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9icm9vbmllL3JlZ21hcC5naXQKPiBnaXQgYmlzZWN0IGdv
b2QgMTgzZDIyNDA4Mzc3M2NhNGE4NGE0NThmYjYwOGVmZWNmZjE5ZTE5ZQo+ICMgZ29vZDogWzEz
NDdmZjBjMGU1MTBmMWE2YWRiNzgyNTlhMmEwZGRmYWM0MWQyNThdIE1lcmdlIGJyYW5jaCAnZm9y
LW5leHQnIG9mIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
ai93cS5naXQKPiBnaXQgYmlzZWN0IGdvb2QgMTM0N2ZmMGMwZTUxMGYxYTZhZGI3ODI1OWEyYTBk
ZGZhYzQxZDI1OAo+ICMgYmFkOiBbYjA5YmQwNGVhYmIxOTk0MjU3ZjRjMTFkMGVkMjVmZjAzNTE3
ZDNlY10gTWVyZ2UgYnJhbmNoICdncGlvL2Zvci1uZXh0JyBvZiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYnJnbC9saW51eC5naXQKPiBnaXQgYmlzZWN0IGJh
ZCBiMDliZDA0ZWFiYjE5OTQyNTdmNGMxMWQwZWQyNWZmMDM1MTdkM2VjCj4gIyBnb29kOiBbNzBi
YzllMTg2NTNjMjBmYmNiNDcxODRkOTQ5OGFkN2JkN2I3ZDZiZV0gTWVyZ2UgYnJhbmNoICd0b2dy
ZWcnIG9mIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9qaWMy
My9paW8uZ2l0Cj4gZ2l0IGJpc2VjdCBnb29kIDcwYmM5ZTE4NjUzYzIwZmJjYjQ3MTg0ZDk0OThh
ZDdiZDdiN2Q2YmUKPiAjIGJhZDogWzNhODQ3ZmI4NWM5ZDQ3ZTYxYWQ1ZDlkNTRiNzYyYTNlOTlh
MDgwODRdIE1lcmdlIGJyYW5jaCAnbmV4dCcgb2YgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3BoeS9saW51eC1waHkuZ2l0Cj4gZ2l0IGJpc2VjdCBiYWQgM2E4
NDdmYjg1YzlkNDdlNjFhZDVkOWQ1NGI3NjJhM2U5OWEwODA4NAo+ICMgc2tpcDogWzUwMzU1YWM3
MGQ0ZjEwNGUyZjgyYmZiZDA2NThjMTI5MDI3ZWJiMzddIGR0LWJpbmRpbmdzOiBwaHk6IENvbnZl
cnQgbWFydmVsbCxjb21waHktY3AxMTAgdG8gRFQgc2NoZW1hCj4gZ2l0IGJpc2VjdCBza2lwIDUw
MzU1YWM3MGQ0ZjEwNGUyZjgyYmZiZDA2NThjMTI5MDI3ZWJiMzcKPiAjIGdvb2Q6IFthY2M2YjBk
NzNkOTAyZDMyOTZkOGM3Nzg3OGE5YjUwOGMyYzZhNWJmXSBwaHk6IHFjb20tcW1wLXVmczogUmVu
YW1lIHFtcF91ZnNfcG93ZXJfb2ZmCj4gZ2l0IGJpc2VjdCBnb29kIGFjYzZiMGQ3M2Q5MDJkMzI5
NmQ4Yzc3ODc4YTliNTA4YzJjNmE1YmYKPiAjIGJhZDogWzM1YjYyOWIyOGFmZDcyYTE0ZWQ1NzNm
MWIxODBkYzRhYjFiZjdlMTldIGR0LWJpbmRpbmdzOiBwaHk6IENvbnZlcnQgdGksZG04MTZ4LXVz
Yi1waHkgdG8gRFQgc2NoZW1hCj4gZ2l0IGJpc2VjdCBiYWQgMzViNjI5YjI4YWZkNzJhMTRlZDU3
M2YxYjE4MGRjNGFiMWJmN2UxOQo+ICMgYmFkOiBbNjZhY2FmOGY2YjBiY2MyNzNmODM1NmIyYTc3
YmFhOTBiMTc3MDE0Y10gZHQtYmluZGluZ3M6IHBoeTogQ29udmVydCBpbWcscGlzdGFjaGlvLXVz
Yi1waHkgdG8gRFQgc2NoZW1hCj4gZ2l0IGJpc2VjdCBiYWQgNjZhY2FmOGY2YjBiY2MyNzNmODM1
NmIyYTc3YmFhOTBiMTc3MDE0Ywo+ICMgYmFkOiBbZjE1MWYzYTZlYmUxODRiNWY4YzlhYmU1OGZl
MmQ2M2Y5OTUwMTM5Yl0gZHQtYmluZGluZ3M6IHBoeTogQ29udmVydCBicmNtLG5zMi1kcmQtcGh5
IHRvIERUIHNjaGVtYQo+IGdpdCBiaXNlY3QgYmFkIGYxNTFmM2E2ZWJlMTg0YjVmOGM5YWJlNThm
ZTJkNjNmOTk1MDEzOWIKPiAjIGJhZDogWzc3ZDJmYTU0YTk0NTc0Zjc2N2Q1ZmIyOTZiNmI4ZTAx
MWViYTBjOGVdIHNjc2k6IHVmczogcWNvbSA6IFJlZmFjdG9yIHBoeV9wb3dlcl9vbi9vZmYgY2Fs
bHMKPiBnaXQgYmlzZWN0IGJhZCA3N2QyZmE1NGE5NDU3NGY3NjdkNWZiMjk2YjZiOGUwMTFlYmEw
YzhlCj4gIyBnb29kOiBbN2Y2MDBmMGUxOTNhNjYzODEzNTAyNmMzNzE4YWMyOTZlZDNmNTA0NF0g
cGh5OiBxY29tLXFtcC11ZnM6IFJlbW92ZSBxbXBfdWZzX2V4aXQoKSBhbmQgSW5saW5lIHFtcF91
ZnNfY29tX2V4aXQoKQo+IGdpdCBiaXNlY3QgZ29vZCA3ZjYwMGYwZTE5M2E2NjM4MTM1MDI2YzM3
MThhYzI5NmVkM2Y1MDQ0Cj4gIyBnb29kOiBbYTA3OWIyZDcxNTM0MDQ4MmU0MjVmZjEzNmI1NTgx
MGFiODI3OTgwMF0gcGh5OiBxY29tLXFtcC11ZnM6IHJlZmFjdG9yIHFtcF91ZnNfcG93ZXJfb2Zm
Cj4gZ2l0IGJpc2VjdCBnb29kIGEwNzliMmQ3MTUzNDA0ODJlNDI1ZmYxMzZiNTU4MTBhYjgyNzk4
MDAKPiAjIGZpcnN0IGJhZCBjb21taXQ6IFs3N2QyZmE1NGE5NDU3NGY3NjdkNWZiMjk2YjZiOGUw
MTFlYmEwYzhlXSBzY3NpOiB1ZnM6IHFjb20gOiBSZWZhY3RvciBwaHlfcG93ZXJfb24vb2ZmIGNh
bGxzCj4gCj4gVGhhbmtzLAo+IEFpc2h3YXJ5YQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
